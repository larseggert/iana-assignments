<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:iana="http://www.iana.org/assignments"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="xml"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"/>

  <xsl:variable name="ALPHA">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
  <xsl:variable name="alpha">abcdefghijklmnopqrstuvwxyz</xsl:variable>

  <xsl:template match="/">
    <html>
    <xsl:apply-templates select="iana:redirect" />
    <xsl:apply-templates select="iana:registry" />
    </html>
  </xsl:template>

  <xsl:template match="/iana:redirect">
    <head>
      <title>Redirecting...</title>
      <meta http-equiv="Refresh" content="0;URL=/assignments/{@registry}"/>
    </head>
    <body/>
  </xsl:template>

  <xsl:template match="/iana:registry">
    <head>
      <link rel="stylesheet" href="../_support/iana-registry.css" type="text/css"/>
      <!-- IE insists on having <script ...></script>, not <script .../> when it
      displays XML converted on the fly using XSLT. -->
      <script type="text/javascript" src="../_support/jquery.js"></script>
      <script type="text/javascript" src="../_support/sort.js"></script>
      <xsl:if test="iana:pagination">
        <script type="text/javascript" src="../_support/sort_srv.js"></script>
        <script type="text/javascript" src="../_support/jsuri.js"></script>
      </xsl:if>
      <xsl:call-template name="iana:head"/>
      <title><xsl:value-of select="iana:title" /></title>
    </head>
    <body>
      <header>
          <div>
          <a href="/"><img src="https://www.iana.org/_img/2022/iana-logo-header.svg" alt="Internet Assigned Numbers Authority"/></a>
          </div>
      </header>
      <article>
      <xsl:apply-templates select="iana:title" />
      <xsl:if
        test="iana:created|iana:updated|iana:registration_rule|iana:expert|iana:description|iana:note|iana:xref|iana:record">
        <dl>
          <xsl:apply-templates select="iana:created" /> 
          <xsl:apply-templates select="iana:updated" /> 
          <xsl:apply-templates select="iana:registration_rule" />
          <xsl:apply-templates select="iana:expert" />
          <xsl:apply-templates select="iana:description" />
          <xsl:call-template name="iana:references"/>
          <xsl:apply-templates select="iana:note" />
          <xsl:call-template name="iana:formats"/>
        </dl>
      </xsl:if>
      <xsl:if test="iana:registry and not(iana:file)">
        <xsl:choose>
          <xsl:when test="count(iana:registry/iana:title) = 0">
          </xsl:when>
          <xsl:when test="count(iana:registry/iana:title) = 1">
            <p><b>Registry included below</b></p>
          </xsl:when>
          <xsl:otherwise>
            <p><b>Registries included below</b></p>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:call-template name="table-of-contents"/>
      </xsl:if>
      <xsl:if test="iana:pagination/@page_cnt > 1 or iana:pagination/@search">
        <form method="get">
          <xsl:attribute name="action"><xsl:value-of select="iana:pagination/iana:url"/></xsl:attribute>
          <input name="search" size="18" type="text">
            <xsl:attribute name="value"><xsl:value-of select="iana:pagination/@search"/></xsl:attribute>
          </input>
          <input value="Search" type="submit"/>
        </form>
      </xsl:if>
      <xsl:if test = "iana:record"><xsl:call-template name="iana:records" /></xsl:if>
      <xsl:if test = "iana:file"><h2>Files</h2><xsl:call-template name="iana:files" /></xsl:if>
      <xsl:apply-templates select="iana:registry" />
      <xsl:apply-templates select="iana:people"/>
      <xsl:call-template name="iana:footnotes"/>
      </article>
      <footer>
          <div>
          <a href="https://www.iana.org/help/licensing-terms">Licensing Terms</a>
          </div>
      </footer>
    </body>
  </xsl:template>

  <xsl:template name="iana:head">
  </xsl:template>

  <xsl:template match="/iana:registry/iana:people">
    <xsl:if test="iana:person">
      <h1 class="people">Contact Information</h1>
      <table class="sortable">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <xsl:if test="iana:person/iana:org">
              <th>Organization</th>
            </xsl:if>
            <th>Contact URI</th>
            <th>Last Updated</th>
          </tr>
        </thead>
        <tbody>
          <xsl:apply-templates select="iana:person"/>
        </tbody>
      </table>
    </xsl:if>
  </xsl:template>

  <xsl:template match="/iana:registry/iana:people/iana:person">
    <tr>
      <td><a name="{@id}">[<xsl:value-of select="@id"/>]</a></td>
      <td><xsl:value-of select="iana:name"/></td>
      <xsl:if test="../iana:person/iana:org">
        <td><xsl:value-of select="iana:org"/></td>
      </xsl:if>
      <td>
        <xsl:for-each select="iana:uri">
          <a href="{.}"><xsl:value-of select="."/></a>
          <xsl:if test="position() != last()"><br/></xsl:if>
        </xsl:for-each>
      </td>
      <td><xsl:value-of select="iana:updated"/></td>
    </tr>
  </xsl:template>

  <xsl:template name="table-of-contents">
    <xsl:if test="iana:registry[iana:title]">
      <ul>
        <xsl:for-each select="iana:registry[iana:title]">
          <li>
            <a href="#{@id}"><xsl:value-of select="iana:title"/></a>
            <xsl:choose>
              <xsl:when test="iana:registry[iana:title]">
                <xsl:call-template name="table-of-contents"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:for-each
                  select="following-sibling::iana:registry[position()=1][count(iana:title)=0]">
                  <xsl:call-template name="table-of-contents"/>
                </xsl:for-each>
              </xsl:otherwise>
            </xsl:choose>
          </li>
        </xsl:for-each>
      </ul>
    </xsl:if>
  </xsl:template>

  <xsl:template name="iana:references">
    <xsl:if test="iana:xref">
      <dt>Reference</dt>
      <dd><xsl:apply-templates select="iana:xref"/></dd>
    </xsl:if>
  </xsl:template>

  <xsl:template match="/iana:registry/iana:title">
    <h1><xsl:apply-templates select="child::node()" /></h1>
  </xsl:template>

  <xsl:template match="iana:title">
    <xsl:choose>
      <xsl:when test="count(ancestor::node()) = 2">
        <h1><a name="{../@id}"/><xsl:apply-templates select="child::node()"/></h1>
      </xsl:when>
      <xsl:when test="count(ancestor::node()) = 3">
        <h2><a name="{../@id}"/><xsl:apply-templates select="child::node()"/></h2>
      </xsl:when>
      <xsl:when test="count(ancestor::node()) = 4">
        <h3><a name="{../@id}"/><xsl:apply-templates select="child::node()"/></h3>
      </xsl:when>
      <xsl:when test="count(ancestor::node()) = 5">
        <h4><a name="{../@id}"/><xsl:apply-templates select="child::node()"/></h4>
      </xsl:when>
      <xsl:when test="count(ancestor::node()) = 6">
        <h5><a name="{../@id}"/><xsl:apply-templates select="child::node()"/></h5>
      </xsl:when>
      <xsl:otherwise>
        <h6><a name="{../@id}"/><xsl:apply-templates select="child::node()"/></h6>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:artwork">
    <pre><xsl:value-of select="." /></pre>
  </xsl:template>

  <xsl:template match="iana:registry/iana:registration_rule">
    <dt>Registration Procedure(s)</dt><dd><pre><xsl:apply-templates/></pre></dd>
  </xsl:template>

  <xsl:template match="iana:registry/iana:expert">
    <dt>Expert(s)</dt><dd><pre><xsl:apply-templates/></pre></dd>
  </xsl:template>

  <xsl:template match="iana:registry/iana:created">
    <dt>Created</dt><dd><xsl:value-of select="." /></dd>
  </xsl:template>

  <xsl:template match="iana:registry/iana:updated">
    <dt>Last Updated</dt><dd><xsl:value-of select="." /></dd>
  </xsl:template>

  <xsl:template match="iana:registry/iana:description">
    <dt>Description</dt><dd><pre><xsl:apply-templates/></pre></dd>
  </xsl:template>

  <xsl:template match="iana:registry/iana:note">
    <xsl:choose>
      <xsl:when test="@title">
       <dt><xsl:value-of select="@title"/></dt>
      </xsl:when>
      <xsl:otherwise>
       <dt>Note</dt>
      </xsl:otherwise>
    </xsl:choose>
    <dd>
      <xsl:choose>
        <xsl:when test="@format = 'rich'">
          <xsl:apply-templates/>
        </xsl:when>
        <xsl:otherwise>
          <pre><xsl:apply-templates/></pre>
        </xsl:otherwise>
      </xsl:choose>
    </dd>
  </xsl:template>

  <xsl:template name="iana:notes">
    <xsl:choose>
      <xsl:when test="count(iana:note) > 1">
        <ul>
          <xsl:for-each select="iana:note">
            <li><xsl:apply-templates/></li>
          </xsl:for-each>
        </ul>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="iana:note"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
 
  <xsl:template match="iana:note">
        <xsl:apply-templates/>
  </xsl:template>
 
  <xsl:template name="iana:formats">
    <dt>Available Formats</dt>
    <dd>
      <xsl:if test="iana:record">
        <a class="altformat" href="{@id}.csv"><img src="/_img/icons/text-csv.png"/><br/>CSV</a>
      </xsl:if>
      <xsl:if test="not(parent::*)">
        <a class="altformat" href="{@id}.xml"><img src="/_img/icons/text-xml.png"/><br/>XML</a>
        <a class="altformat" href="{@id}.xhtml"><img src="/_img/icons/text-html.png"/><br/>HTML</a>
        <a class="altformat" href="{@id}.txt"><img src="/_img/icons/text-plain.png"/><br/>Plain text</a>
      </xsl:if>
    </dd>
  </xsl:template>

  <xsl:template match="iana:registry">
    <xsl:apply-templates select="iana:title"/>
    <xsl:if
      test="iana:registration_rule|iana:expert|iana:description|iana:note|iana:xref|iana:record">
      <dl>
        <xsl:apply-templates select="iana:registration_rule" />
        <xsl:apply-templates select="iana:expert" />
        <xsl:apply-templates select="iana:description" />
        <xsl:call-template name="iana:references"/>
        <xsl:apply-templates select="iana:note" />
        <xsl:if test="iana:record"><xsl:call-template name="iana:formats"/></xsl:if>
      </dl>
    </xsl:if>
    <xsl:call-template name="iana:records" />
  </xsl:template>

  <xsl:template name="iana:record_style"/>
  <xsl:template name="iana:record_header"/>

  <xsl:template name="page_link">
    <xsl:param name="i"/>
    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="iana:url"/>
        <xsl:text>&amp;page=</xsl:text>
        <xsl:value-of select="$i"/>
      </xsl:attribute>
      <xsl:value-of select="$i"/>
    </a>
  </xsl:template>

  <xsl:template name="page_bar">
    <xsl:param name="max"/>
    <xsl:param name="i"/>
    <xsl:choose>
      <xsl:when test="$i &lt; $max">
        <xsl:text> </xsl:text>
        <xsl:call-template name="page_link"><xsl:with-param name="i" select="$i"/></xsl:call-template>
        <xsl:call-template name="page_bar">
          <xsl:with-param name="i" select="$i + 1"/>
          <xsl:with-param name="max" select="$max"/>
        </xsl:call-template>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:variable name="nav_width" select="5"/>
  <xsl:template match="iana:pagination">
    <xsl:if test="@page_num != 1">
      <xsl:call-template name="page_link"><xsl:with-param name="i" select="1"/></xsl:call-template>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="(@page_num - $nav_width) &gt; 0">
        <xsl:text>...</xsl:text>
        <xsl:call-template name="page_bar">
          <xsl:with-param name="max" select="@page_num"/>
          <xsl:with-param name="i" select="@page_num - $nav_width"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="page_bar">
          <xsl:with-param name="max" select="@page_num"/>
          <xsl:with-param name="i" select="2"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text> </xsl:text><xsl:value-of select="@page_num"/>
    <xsl:choose>
      <xsl:when test="(@page_num + $nav_width) &lt; @page_cnt">
        <xsl:call-template name="page_bar">
          <xsl:with-param name="max" select="@page_num + $nav_width + 1"/>
          <xsl:with-param name="i" select="@page_num + 1"/>
        </xsl:call-template>
        <xsl:text> ...</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="page_bar">
          <xsl:with-param name="max" select="@page_cnt"/>
          <xsl:with-param name="i" select="@page_num + 1"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text> </xsl:text>
    <xsl:if test="@page_cnt != @page_num">
      <xsl:call-template name="page_link"><xsl:with-param name="i" select="@page_cnt"/></xsl:call-template>
    </xsl:if>
  </xsl:template>

  <xsl:template name="iana:records">
    <xsl:if test="iana:range">
       <table class="sortable" id="table-{@id}-range">
          <thead>
	     <tr>
                <xsl:choose>
                   <xsl:when test="iana:range/iana:hex">
                      <th>Decimal</th>
	              <th>Hex</th>
                   </xsl:when>
                   <xsl:otherwise>
                      <th>Range</th>
                   </xsl:otherwise>
                </xsl:choose>
		<th>Registration Procedures</th>
                <xsl:if test="iana:range/iana:note">
	           <th>Note</th>
                </xsl:if>
                <xsl:if test="iana:range/iana:xref">
                   <th>References</th>
                </xsl:if>
             </tr>
	  </thead>
	  <tbody>
             <xsl:for-each select="iana:range">
                <tr>
                   <td><xsl:value-of select="iana:value"/></td>
                   <xsl:if test="../iana:range/iana:hex">
                      <td><xsl:apply-templates select="iana:hex"/></td>
                   </xsl:if>
                   <td><xsl:apply-templates select="iana:registration_rule"/></td>
                   <xsl:if test="../iana:range/iana:note">
                      <td><xsl:apply-templates select="iana:note"/></td>
                   </xsl:if>
                   <xsl:if test="../iana:range/iana:xref">
                      <td><xsl:apply-templates select="iana:xref"/></td>
                   </xsl:if>
                </tr>
             </xsl:for-each>
	  </tbody>
       </table>
    </xsl:if>
    <xsl:if test="iana:pagination/@page_cnt > 1">
      <div class="pagination"><xsl:apply-templates select="iana:pagination"/></div>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="iana:record|iana:registry|iana:artwork">
        <xsl:if test="iana:record">
          <table id="table-{@id}">
            <xsl:attribute name="class">sortable<xsl:if test="iana:pagination">_srv</xsl:if></xsl:attribute>
	    <xsl:call-template name="iana:record_style"/>
            <thead>
              <xsl:call-template name="iana:record_header"/>
              <xsl:if test="iana:record//iana:unallocated">
                <tr>
                  <td colspan="0">
                    <input type="checkbox" class="unallocatedcb" id="unallocatedcb-{@id}" checked="checked" value="1"/>
                    <label for="unallocatedcb-{@id}">Show unallocated space</label>
                  </td>
                </tr>
              </xsl:if>
            </thead>
            <tbody>
              <xsl:apply-templates select="iana:record"/>
            </tbody>
          </table>
        </xsl:if>
        <xsl:if test="iana:registry">
          <div class="registry level{count(ancestor::node())}">
            <xsl:apply-templates select="iana:registry" />
          </div>
        </xsl:if>
        <xsl:if test="iana:artwork">
          <xsl:apply-templates select="iana:artwork"/>
        </xsl:if>
      </xsl:when>
      <xsl:otherwise>
       <xsl:call-template name="iana:registryempty"/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:if test="iana:pagination/@page_cnt > 1">
      <div class="pagination"><xsl:apply-templates select="iana:pagination"/></div>
    </xsl:if>
  </xsl:template>

  <xsl:template name="iana:files">
    <ul>
      <xsl:for-each select="iana:file">
        <li>
          <xsl:apply-templates select="."/>
        </li>
      </xsl:for-each>
    </ul>
  </xsl:template>

  <xsl:template match="iana:file">
    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="."/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="@name">
          <xsl:value-of select="@name"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="."/>
        </xsl:otherwise>
      </xsl:choose>
    </a>
  </xsl:template>

  <xsl:template name="iana:footnotes">
    <xsl:if test="//iana:footnote">
      <h1>Footnote<xsl:if test="count(//iana:footnote) != 1">s</xsl:if></h1>
      <table class="fn">
        <xsl:apply-templates select="//iana:footnote"/>
      </table>
    </xsl:if>
  </xsl:template>

  <xsl:template match="iana:footnote">
    <tr>
      <td class="fn" valign="top"><a name="note{@anchor}">[<xsl:value-of select="@anchor"/>]</a></td>
      <td class="fn"><pre><xsl:apply-templates/></pre></td>
    </tr>
  </xsl:template>

  <xsl:template match="iana:xref">
    <xsl:text>[</xsl:text>
    <xsl:choose>
      <xsl:when test="@type = 'rfc'">
        <a href="https://www.iana.org/go/{@data}">
          <xsl:choose>
            <xsl:when test="normalize-space()">
              <xsl:value-of select="."/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="translate(@data,$alpha,$ALPHA)"/>
            </xsl:otherwise>
          </xsl:choose>
        </a>
      </xsl:when>
      <xsl:when test="@type = 'rfc-errata'">
        <a href="http://www.rfc-editor.org/errata_search.php?eid={@data}">
          <xsl:text>RFC Errata </xsl:text>
          <xsl:choose>
            <xsl:when test="normalize-space()">
              <xsl:value-of select="."/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="translate(@data,$alpha,$ALPHA)"/>
            </xsl:otherwise>
          </xsl:choose>
        </a>
      </xsl:when>
      <xsl:when test="@type = 'draft'">
        <a>
          <xsl:attribute name="href">
            <xsl:choose>
              <xsl:when test="starts-with(@data, 'RFC-')">https://www.iana.org/go/draft-<xsl:value-of select="substring(@data,5)"/></xsl:when>
              <xsl:otherwise>https://www.iana.org/go/<xsl:value-of select="@data"/></xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
          <xsl:choose>
            <xsl:when test="normalize-space()">
              <xsl:value-of select="."/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="@data"/>
            </xsl:otherwise>
          </xsl:choose>
        </a>
      </xsl:when>
      <xsl:when test="@type = 'uri'">
        <a href="{@data}">
          <xsl:choose>
            <xsl:when test="normalize-space()">
              <xsl:value-of select="."/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="@data"/>
            </xsl:otherwise>
          </xsl:choose>
        </a>
      </xsl:when>
      <xsl:when test="@type = 'person'">
        <a href="#{@data}"><xsl:value-of select="@data"/></a>
      </xsl:when>
      <xsl:when test="@type = 'note'">
        <a href="#note{@data}"><xsl:value-of select="@data"/></a>
      </xsl:when>
      <xsl:when test="@type = 'registry'">
        <a href="https://www.iana.org/assignments/{@data}">
          <xsl:choose>
            <xsl:when test="normalize-space()">
              <xsl:value-of select="."/>
            </xsl:when>
            <xsl:otherwise>IANA registry <i><xsl:value-of select="@data"/></i></xsl:otherwise>
          </xsl:choose>
        </a>
      </xsl:when>
      <xsl:when test="@type = 'unicode'">
        <xsl:choose>
          <xsl:when test="starts-with(@data, 'ucd')">
            <a href="http://unicode.org/Public/{substring-after(@data, 'ucd')}">
              <xsl:choose>
                <xsl:when test="normalize-space()">
                  <xsl:value-of select="."/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>Unicode Character Database </xsl:text>
                  <xsl:value-of select="substring-after(@data, 'ucd')"/>
                </xsl:otherwise>
              </xsl:choose>
            </a>
          </xsl:when>
        </xsl:choose>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="."/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>]</xsl:text>
    <xsl:if test="@lastupdated">
      (<xsl:value-of select="@lastupdated"/>)
    </xsl:if>
  </xsl:template>

  <xsl:template match="iana:br">
    <br/>
  </xsl:template>

  <xsl:template match="iana:paragraph">
    <p><xsl:apply-templates select="child::node()"/></p>
  </xsl:template>

  <xsl:template match="iana:list">
    <ul><xsl:apply-templates select="child::node()"/></ul>
  </xsl:template>

  <xsl:template match="iana:item">
    <li><xsl:apply-templates select="child::node()"/></li>
  </xsl:template>

  <xsl:template name="iana:registryempty">
   <table>
     <thead>
       <xsl:call-template name="iana:record_header"/>
     </thead>
     <tbody>
       <tr>
         <td colspan="0" class="registryempty">No registrations at this time.</td>
       </tr>
     </tbody>
   </table>
  </xsl:template>

  <xsl:template name="bitvalue-recur">
    <xsl:param name="number"/>
    <xsl:param name="width"/>
    <xsl:variable name="digits" select="'0123456789ABCDEF'"/>
    <xsl:choose>
      <xsl:when test="$width = 0">
        <xsl:if test="$number >= 16">
          <xsl:call-template name="bitvalue-recur">
            <xsl:with-param name="number" select="floor($number div 16)"/>
          </xsl:call-template>
        </xsl:if>
        <xsl:value-of select="substring($digits, ($number mod 16) + 1, 1)"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="$width > 1">
          <xsl:call-template name="bitvalue-recur">
            <xsl:with-param name="width" select="$width - 1"/>
            <xsl:with-param name="number" select="floor($number div 16)"/>
          </xsl:call-template>
        </xsl:if>
        <xsl:value-of select="substring($digits, ($number mod 16) + 1, 1)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="bitvalue">
    <xsl:param name="base" select="2"/>
    <xsl:param name="power"/>
    <xsl:param name="value" select="1"/>
    <xsl:choose>
      <xsl:when test="$power > 0">
        <xsl:call-template name="bitvalue">
          <xsl:with-param name="base" select="$base"/>
          <xsl:with-param name="power" select="$power - 1"/>
          <xsl:with-param name="value" select="$value * $base"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>0x</xsl:text>
        <xsl:call-template name="bitvalue-recur">
          <xsl:with-param name="number" select="$value"/>
          <xsl:with-param name="width" select="2"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
