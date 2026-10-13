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

  <xsl:param name="display_beta_site_banner" select="'false'"/>
  <xsl:param name="website_base_url" select="'https://www.iana.org'"/>
  <xsl:param name="registry_json_base_url" select="''"/>
  <xsl:param name="registry_csv_base_url" select="''"/>
  <xsl:param name="enable_json_export" select="'false'"/>
  <xsl:param name="assignments_base" select="'../'"/>
  <!-- 'true' (set by the website): a cross-reference in a table row (record or range) is output as
       <span class="xref"> instead of in [brackets]; note references keep their brackets. -->
  <xsl:param name="mark_table_xrefs" select="'false'"/>
  <!-- 'false' leaves adjacent xrefs back to back (the CSV export keeps its reference format) -->
  <xsl:param name="separate_xrefs" select="'true'"/>

  <xsl:template match="/iana:registry">

    <head>
      <link rel="stylesheet" href="{concat($assignments_base, '_support/iana-registry.css')}" type="text/css"/>
      <!-- IE insists on having <script ...></script>, not <script .../> when it
      displays XML converted on the fly using XSLT. -->
      <script type="text/javascript" src="{concat($assignments_base, '_support/jquery.js')}"></script>
      <script type="text/javascript" src="{concat($assignments_base, '_support/sort.js')}"></script>
      <xsl:if test="iana:pagination">
        <script type="text/javascript" src="{concat($assignments_base, '_support/sort_srv.js')}"></script>
        <script type="text/javascript" src="{concat($assignments_base, '_support/jsuri.js')}"></script>
      </xsl:if>
      <xsl:call-template name="iana:head"/>
      <title><xsl:value-of select="iana:title" /></title>
    </head>
    <body>
      <header>
        <div id="header">
          <div id="logo">
            <a href="{concat($website_base_url, '/')}">
              <img src="{concat($assignments_base, '_support/iana-logo-header.svg')}" alt="Internet Assigned Numbers Authority"/>
            </a>
          </div>
          <div class="navigation">
            <ul>
                <li><a href="{concat($website_base_url, '/domains')}">Domains</a></li>
                <li><a href="{concat($website_base_url, '/protocols')}">Protocols</a></li>
                <li><a href="{concat($website_base_url, '/numbers')}">Numbers</a></li>
                <li><a href="{concat($website_base_url, '/about')}">About</a></li>
            </ul>
          </div>
        </div>
        <xsl:if test="$display_beta_site_banner = 'true'">
           <div id="header_banner" class="panel_warning">
             <div class="hemmed">This is a beta site, intended for testing and feedback, which can be sent to
              <a href="mailto:beta-feedback@iana.org">beta-feedback@iana.org</a>.
              <br/>
              For the latest information and to submit requests, please use
              <a href="https://www.iana.org">www.iana.org</a>.
            </div>
          </div>
        </xsl:if>
      </header>
      <article>
      <xsl:apply-templates select="iana:title" />
      <xsl:if
        test="iana:created|iana:updated|iana:registration_rule|iana:expert|iana:description|iana:note|iana:xref|iana:record">
        <dl>
          <xsl:apply-templates select="iana:created" />
          <xsl:apply-templates select="iana:updated" />
          <xsl:call-template name="iana:registration_rules"/>
          <xsl:call-template name="iana:experts"/>
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
            <p class="registry-toc-heading"><b>Registry Included Below</b></p>
          </xsl:when>
          <xsl:otherwise>
            <p class="registry-toc-heading"><b>Registries Included Below</b></p>
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
          <a href="{concat($website_base_url, '/help/licensing-terms')}">Licensing Terms</a>
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

  <xsl:template name="iana:registry_files">
    <dt>Registry File(s)</dt>
    <xsl:for-each select="iana:file">
      <dd><xsl:apply-templates select="."/></dd>
    </xsl:for-each>
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

  <!-- All registration rules of a registry under one Registration Procedure(s) heading, one per line -->
  <xsl:template name="iana:registration_rules">
    <xsl:if test="iana:registration_rule">
      <dt>Registration Procedure(s)</dt>
      <dd><pre><xsl:for-each select="iana:registration_rule">
        <span class="registration-rule"><xsl:apply-templates/></span>
        <xsl:if test="position() != last()"><xsl:text>&#10;</xsl:text></xsl:if>
      </xsl:for-each></pre></dd>
    </xsl:if>
  </xsl:template>

  <!-- All experts of a registry under one Expert(s) heading, one per line -->
  <xsl:template name="iana:experts">
    <xsl:if test="iana:expert">
      <dt>Expert(s)</dt>
      <dd><pre><xsl:for-each select="iana:expert">
        <span class="expert"><xsl:apply-templates/></span>
        <xsl:if test="position() != last()"><xsl:text>&#10;</xsl:text></xsl:if>
      </xsl:for-each></pre></dd>
    </xsl:if>
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
      <!-- A warning note without a title has no heading: just its box -->
      <xsl:when test="@type = 'warning'"/>
      <xsl:otherwise>
       <dt>Note</dt>
      </xsl:otherwise>
    </xsl:choose>
    <dd class="note">
      <xsl:choose>
        <!-- An important note: the same text, in a highlighted box -->
        <xsl:when test="@type = 'warning'">
          <div class="panel_warning icon"><xsl:call-template name="iana:note_text"/></div>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="iana:note_text"/>
        </xsl:otherwise>
      </xsl:choose>
    </dd>
  </xsl:template>

  <xsl:template name="iana:note_text">
      <xsl:choose>
        <xsl:when test="@format = 'rich'">
          <xsl:apply-templates/>
        </xsl:when>
        <xsl:otherwise>
          <pre><xsl:apply-templates/></pre>
        </xsl:otherwise>
      </xsl:choose>
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

  <xsl:template match="iana:registry/iana:files">
    <dt>Registry File(s)</dt>
    <xsl:for-each select="iana:file">
      <dd><xsl:apply-templates select="."/></dd>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="iana:formats">
    <xsl:variable name="registry_id" select="./@id"/>
    <xsl:variable name="group_id">
      <xsl:value-of select="/iana:registry/@id"/>
    </xsl:variable>
    <dt>Available Formats</dt>
    <dd>
        <xsl:if test="iana:record">
            <a class="altformat" href="{concat($registry_csv_base_url, '/assignments/', $group_id, '/', $registry_id, '.csv')}">
                <img src="{concat($assignments_base, '_support/export-csv.png')}"/>
                <br/>CSV
            </a>
            <xsl:if test="$enable_json_export = 'true'">
                <a class="altformat" href="{concat($registry_json_base_url, '/assignments/', $group_id, '/', $registry_id, '-v1.json')}">
                    <img src="{concat($assignments_base, '_support/export-json.svg')}" height="25"/>
                    <br/>JSON
                </a>
            </xsl:if>
        </xsl:if>
      <xsl:if test="not(parent::*)">
        <a class="altformat" href="{concat($assignments_base, $group_id, '/', $registry_id, '.xml')}"><img src="{concat($assignments_base, '_support/export-xml.png')}"/><br/>XML</a>
        <a class="altformat" href="{concat($assignments_base, $group_id)}"><img src="{concat($assignments_base, '_support/export-html.png')}"/><br/>HTML</a>
        <a class="altformat" href="{concat($assignments_base, $group_id, '/', $registry_id, '.txt')}"><img src="{concat($assignments_base, '_support/export-plain.png')}"/><br/>TXT</a>
      </xsl:if>
    </dd>
  </xsl:template>

  <xsl:template match="iana:registry">
    <xsl:apply-templates select="iana:title"/>
    <xsl:if
      test="iana:created|iana:updated|iana:registration_rule|iana:expert|iana:description|iana:note|iana:xref|iana:record|iana:file">
      <dl>
        <xsl:apply-templates select="iana:created" />
        <xsl:apply-templates select="iana:updated" />
        <xsl:call-template name="iana:registration_rules"/>
        <xsl:call-template name="iana:experts"/>
        <xsl:apply-templates select="iana:description" />
        <xsl:call-template name="iana:references"/>
        <xsl:apply-templates select="iana:note" />
        <xsl:if test="iana:file"><xsl:call-template name="iana:registry_files"/></xsl:if>
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
                   <xsl:when test="iana:range/iana:entry_size">
                     <th>Entry Point</th>
                     <th>Size</th>
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
                   <xsl:if test="../iana:range/iana:entry_size">
                      <td><xsl:apply-templates select="iana:entry_size"/></td>
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
        <xsl:choose>
          <xsl:when test="starts-with(., 'http://') or starts-with(., 'https://') or starts-with(., '//')">
            <xsl:value-of select="."/>
          </xsl:when>
            <xsl:when test="@type = 'mib'">
              <xsl:value-of select="concat($assignments_base, .)"/>
            </xsl:when>
          <xsl:when test="@registry">
            <xsl:value-of select="concat($assignments_base, @registry, '/', .)"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="concat($assignments_base, /iana:registry/@id, '/', .)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="@name">
          <xsl:value-of select="@name"/>
        </xsl:when>
        <xsl:when test="@registry">
          <xsl:value-of select="concat(@registry, '/', .)"/>
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

  <!-- Fragment kind of an rfc/draft xref, used in labels: Section, Page, Appendix, Table, Figure; empty for anchor or none -->
  <xsl:template name="iana:xref_fragment_kind">
    <xsl:choose>
      <xsl:when test="@section">Section</xsl:when>
      <xsl:when test="@page">Page</xsl:when>
      <xsl:when test="@appendix">Appendix</xsl:when>
      <xsl:when test="@table">Table</xsl:when>
      <xsl:when test="@figure">Figure</xsl:when>
    </xsl:choose>
  </xsl:template>

  <!-- Fragment value of an rfc/draft xref, e.g. 6.11.3 -->
  <xsl:template name="iana:xref_fragment_value">
    <xsl:value-of select="(@section|@page|@appendix|@table|@figure|@anchor)[1]"/>
  </xsl:template>

  <!-- URL fragment of an rfc/draft xref, e.g. #section-6.11.3 -->
  <xsl:template name="iana:xref_fragment_href">
    <xsl:choose>
      <xsl:when test="@section">
        <xsl:value-of select="concat('#section-', @section)"/>
      </xsl:when>
      <xsl:when test="@page">
        <xsl:value-of select="concat('#page-', @page)"/>
      </xsl:when>
      <xsl:when test="@appendix">
        <xsl:value-of select="concat('#appendix-', @appendix)"/>
      </xsl:when>
      <xsl:when test="@table">
        <xsl:value-of select="concat('#table-', @table)"/>
      </xsl:when>
      <xsl:when test="@figure">
        <xsl:value-of select="concat('#figure-', @figure)"/>
      </xsl:when>
      <xsl:when test="@anchor">
        <xsl:value-of select="concat('#', @anchor)"/>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <!-- Document URL of an rfc/draft xref, without fragment -->
  <xsl:template name="iana:xref_doc_href">
    <xsl:choose>
      <xsl:when test="@type = 'draft' and starts-with(@data, 'RFC-')">
        <xsl:value-of select="concat($website_base_url, '/go/draft-', substring(@data,5))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="concat($website_base_url, '/go/', @data)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Document label of an rfc/draft xref, without fragment: RFC 8994 or the draft name -->
  <xsl:template name="iana:xref_doc_label">
    <xsl:choose>
      <xsl:when test="@type = 'rfc'">
        <xsl:value-of select="concat('RFC ', substring(@data, 4))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="@data"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Linked fragment value of a bare xref, e.g. <a href="...#section-6.11.4">6.11.4</a>.
       On its own (standalone), a fragment other than a section keeps its word: "Table 6". -->
  <xsl:template name="iana:xref_bare_link">
    <xsl:param name="standalone" select="false()"/>
    <xsl:variable name="doc_href"><xsl:call-template name="iana:xref_doc_href"/></xsl:variable>
    <xsl:variable name="fragment_href"><xsl:call-template name="iana:xref_fragment_href"/></xsl:variable>
    <xsl:variable name="fragment_value"><xsl:call-template name="iana:xref_fragment_value"/></xsl:variable>
    <a href="{concat($doc_href, $fragment_href)}">
      <xsl:choose>
        <xsl:when test="$standalone and (@page|@appendix|@table|@figure)">
          <xsl:call-template name="iana:xref_fragment_kind"/>
          <xsl:value-of select="concat(' ', $fragment_value)"/>
        </xsl:when>
        <xsl:when test="string($fragment_value)"><xsl:value-of select="$fragment_value"/></xsl:when>
        <xsl:otherwise><xsl:call-template name="iana:xref_doc_label"/></xsl:otherwise>
      </xsl:choose>
    </a>
  </xsl:template>

  <!--
    label-format values follow xml2rfc v3 sectionFormat, RFC 7991 Section 2.66.1 (with verified errata):
      "of"      Section 6.1.1.1 of RFC 7285
      "comma"   RFC 7285, Section 6.1.1.1
      "parens"  RFC 7285 (Section 6.1.1.1)
      "bare"    6.1.1.1
    It applies to rfc/draft xrefs with a section, page, appendix, table or figure attribute.
    Unlike RFC 7991 (default "of"), the default here when the attribute is absent is "comma",
    the format the registries have always used.

    label-format="bare": render only the linked fragment value.
    A bare xref that directly follows an xref to the same document (only whitespace in between)
    is attached to it and rendered inside its brackets, e.g.
      <xref type="rfc" data="rfc8994" section="6.11.3"/>
      <xref type="rfc" data="rfc8994" section="6.11.4" label-format="bare"/>
    renders as [RFC 8994, Section 6.11.3, 6.11.4] (default, "comma"); with label-format="of"
    on the first xref as [Sections 6.11.3, 6.11.4 of RFC 8994], and with label-format="parens"
    as [RFC 8994 (Section 6.11.3, 6.11.4)].
    Each value is linked to its own section.
    A bare xref that is not attached renders as the linked value alone, without brackets;
    a page, appendix, table or figure keeps its word ("Table 6"), so
      <xref type="rfc" data="rfc9142" table="12" label-format="bare"/> in <xref ... section="4" label-format="of"/>
    renders as Table 12 in [Section 4 of RFC 9142].
  -->
  <xsl:template match="iana:xref[@label-format = 'bare']">
    <xsl:variable name="attached">
      <xsl:call-template name="iana:xref_bare_attached"/>
    </xsl:variable>
    <xsl:if test="$attached != 'yes'">
      <xsl:call-template name="iana:xref_bare_link">
        <xsl:with-param name="standalone" select="true()"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

  <!-- Whitespace between attached bare xrefs is part of the group, not output -->
  <xsl:template match="text()[not(normalize-space())][following-sibling::*[1][self::iana:xref[@label-format = 'bare']]]">
    <xsl:variable name="attached">
      <xsl:for-each select="following-sibling::*[1]">
        <xsl:call-template name="iana:xref_bare_attached"/>
      </xsl:for-each>
    </xsl:variable>
    <xsl:if test="$attached != 'yes'">
      <xsl:value-of select="."/>
    </xsl:if>
  </xsl:template>

  <!-- 'yes' when the bare context xref is attached to a preceding non-bare xref to the same document -->
  <xsl:template name="iana:xref_bare_attached">
    <xsl:variable name="prev" select="preceding-sibling::node()[self::* or (self::text() and normalize-space())][1]"/>
    <xsl:choose>
      <xsl:when test="$prev/self::iana:xref[@type = current()/@type and @data = current()/@data]">
        <xsl:choose>
          <xsl:when test="$prev/@label-format = 'bare'">
            <xsl:for-each select="$prev">
              <xsl:call-template name="iana:xref_bare_attached"/>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>yes</xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:otherwise>no</xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Bare xrefs attached after the context xref, each as ", <a>value</a>" -->
  <xsl:template name="iana:xref_bare_run">
    <xsl:variable name="next" select="following-sibling::node()[self::* or (self::text() and normalize-space())][1]"/>
    <xsl:if test="$next/self::iana:xref[@label-format = 'bare' and @type = current()/@type and @data = current()/@data]">
      <xsl:for-each select="$next">
        <xsl:text>, </xsl:text>
        <xsl:call-template name="iana:xref_bare_link"/>
        <xsl:call-template name="iana:xref_bare_run"/>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>

  <xsl:template match="iana:xref">
    <xsl:variable name="link_label">
      <xsl:choose>
        <xsl:when test="normalize-space()">
          <xsl:value-of select="."/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="base"><xsl:call-template name="iana:xref_doc_label"/></xsl:variable>
          <xsl:variable name="kind"><xsl:call-template name="iana:xref_fragment_kind"/></xsl:variable>
          <xsl:variable name="value"><xsl:call-template name="iana:xref_fragment_value"/></xsl:variable>
          <xsl:choose>
            <!-- label-format="of": Section 5.2 of RFC 1234 -->
            <xsl:when test="string($kind) and @label-format = 'of'">
              <xsl:value-of select="concat($kind, ' ', $value, ' of ', $base)"/>
            </xsl:when>
            <!-- label-format="parens": RFC 1234 (Section 5.2) -->
            <xsl:when test="string($kind) and @label-format = 'parens'">
              <xsl:value-of select="concat($base, ' (', $kind, ' ', $value, ')')"/>
            </xsl:when>
            <!-- default (label-format="comma" or absent): RFC 1234, Section 5.2 -->
            <xsl:when test="string($kind)">
              <xsl:value-of select="concat($base, ', ', $kind, ' ', $value)"/>
            </xsl:when>
            <xsl:when test="@anchor">
              <xsl:value-of select="concat($base, '#', @anchor)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="$base"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="doc_href"><xsl:call-template name="iana:xref_doc_href"/></xsl:variable>
    <xsl:variable name="fragment_href"><xsl:call-template name="iana:xref_fragment_href"/></xsl:variable>
    <xsl:variable name="link_href" select="concat($doc_href, $fragment_href)"/>
    <!-- An rfc/draft xref without text, with a fragment, followed by bare xrefs to the same document -->
    <xsl:variable name="groups_bare" select="(@type = 'rfc' or @type = 'draft') and not(normalize-space())
                                             and (@section|@page|@appendix|@table|@figure)
                                             and following-sibling::node()[self::* or (self::text() and normalize-space())][1]
                                                 /self::iana:xref[@label-format = 'bare' and @type = current()/@type and @data = current()/@data]"/>
    <xsl:variable name="ref">
      <xsl:choose>
        <xsl:when test="$groups_bare and @label-format = 'of'">
          <!-- "of" format with attached bare xrefs: [Sections 3.1, 3.2 of RFC 9999] -->
          <xsl:variable name="kind"><xsl:call-template name="iana:xref_fragment_kind"/></xsl:variable>
          <a href="{$link_href}">
            <xsl:choose>
              <xsl:when test="$kind = 'Appendix'">Appendices</xsl:when>
              <xsl:otherwise><xsl:value-of select="concat($kind, 's')"/></xsl:otherwise>
            </xsl:choose>
            <xsl:text> </xsl:text>
            <xsl:call-template name="iana:xref_fragment_value"/>
          </a>
          <xsl:call-template name="iana:xref_bare_run"/>
          <xsl:text> of </xsl:text>
          <a href="{$doc_href}"><xsl:call-template name="iana:xref_doc_label"/></a>
        </xsl:when>
        <xsl:when test="$groups_bare and @label-format = 'parens'">
          <!-- "parens" format with attached bare xrefs: [RFC 9999 (Section 3.1, 3.2)] -->
          <xsl:variable name="kind"><xsl:call-template name="iana:xref_fragment_kind"/></xsl:variable>
          <a href="{$doc_href}"><xsl:call-template name="iana:xref_doc_label"/></a>
          <xsl:text> (</xsl:text>
          <a href="{$link_href}">
            <xsl:value-of select="concat($kind, ' ')"/>
            <xsl:call-template name="iana:xref_fragment_value"/>
          </a>
          <xsl:call-template name="iana:xref_bare_run"/>
          <xsl:text>)</xsl:text>
        </xsl:when>
        <xsl:when test="@type = 'rfc' or @type = 'draft'">
          <a href="{$link_href}"><xsl:value-of select="$link_label"/></a>
          <xsl:call-template name="iana:xref_bare_run"/>
        </xsl:when>
        <xsl:when test="@type = 'rfc-errata'">
            <a href="{concat($website_base_url, '/go/eid', @data)}">
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
          <a href="{concat($website_base_url, '/assignments/', @data)}">
            <xsl:choose>
              <xsl:when test="normalize-space()">
                <xsl:value-of select="."/>
              </xsl:when>
              <xsl:otherwise><xsl:value-of select="@data"/> registry</xsl:otherwise>
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
    </xsl:variable>
    <xsl:choose>
      <xsl:when test="$mark_table_xrefs = 'true' and (ancestor::iana:record or ancestor::iana:range) and not(@type = 'note')">
        <span class="xref"><xsl:copy-of select="$ref"/></span>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>[</xsl:text>
        <xsl:copy-of select="$ref"/>
        <xsl:text>]</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:if test="@lastupdated">
      (<xsl:value-of select="@lastupdated"/>)
    </xsl:if>
    <xsl:call-template name="iana:xref_separator"/>
  </xsl:template>

  <!--
    Two xrefs next to each other (nothing but whitespace between) are separated
    with "; ": [RFC 821]; [RFC 5321]. Not after a footnote marker (type="note") or
    before one, not before the bare xrefs grouped into this one, not between the
    registry's own references (the Reference list), not in table cells the
    website lays out itself (mark_table_xrefs), and not after the last node a
    template selected, so a cell that shows only some xrefs (person xrefs in
    their own column) doesn't end with a separator.
  -->
  <xsl:template name="iana:xref_separator">
    <xsl:variable name="next" select="following-sibling::node()[self::* or (self::text() and normalize-space())]
                                      [not(self::iana:xref[@label-format = 'bare' and @type = current()/@type and @data = current()/@data])][1]"/>
    <xsl:if test="$separate_xrefs = 'true'
                  and $next/self::iana:xref[not(@type = 'note')] and not(@type = 'note') and not(parent::iana:registry)
                  and position() != last()
                  and not($mark_table_xrefs = 'true' and (ancestor::iana:record or ancestor::iana:range))">
      <xsl:text>; </xsl:text>
    </xsl:if>
  </xsl:template>

  <xsl:template match="iana:br">
    <br/>
  </xsl:template>

  <xsl:template match="iana:paragraph">
    <p><xsl:apply-templates select="child::node()"/></p>
  </xsl:template>

  <!-- A paragraph with no text or child elements renders nothing, not an empty <p> -->
  <xsl:template match="iana:paragraph[not(normalize-space()) and not(*)]"/>

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

  <xsl:template name="assignment_id">
    <xsl:value-of select="iana:value"/>
  </xsl:template>

</xsl:stylesheet>
