<?xml version="1.0"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
    <xsl:when test="@id = 'overlay-alg'">
      <tr><th>Algorithm Name</th><th>Reference</th></tr>
    </xsl:when>
      <xsl:when test="@id = 'access-control'">
        <tr><th>Access Policy</th><th>Reference</th></tr>
      </xsl:when>    
      
      <xsl:when test="@id = 'app-id'">
        <tr><th>Application-ID</th><th>Application</th><th>Reference</th></tr>
      </xsl:when>      
            
      <xsl:when test="@id = 'data-kind-id'">
        <tr><th>Kind-ID</th><th>Kind</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'data-model'">
        <tr><th>Data Model</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'message-codes'">
        <tr><th>Code Value</th><th>Message Code Name</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'error-codes'">
        <tr><th>Code Value</th><th>Error Code Name</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'overlay-link-types'">
        <tr><th>Code</th><th>Protocol</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'overlay-link-protocols'">
        <tr><th>Link Protocol</th><th>Reference</th></tr>
      </xsl:when>        
      <xsl:when test="@id = 'forwarding-options'">
        <tr><th>Code</th><th>Forwarding Option</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'probe-info'">
        <tr><th>Code</th><th>Probe Option</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'message-extensions'">
        <tr><th>Code</th><th>Extension Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'services'">
        <tr><th>Namespace</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'access-control-policy'">
        <tr><th>Access Policy</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'overlay-alg'">
        <tr>
      <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
    </xsl:when>
      <xsl:when test="../@id = 'access-control'">
        <tr>
      <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
          </tr>
    </xsl:when>            
      <xsl:when test="../@id = 'app-id'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:spec"/></td>
          </tr>
      </xsl:when>          
      <xsl:when test="../@id = 'data-kind-id'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:spec"/></td>
          </tr>
      </xsl:when>     
      <xsl:when test="../@id = 'data-model'">
        <tr>
      <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
          </tr>
    </xsl:when>      
      <xsl:when test="../@id = 'message-codes'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:spec"/></td>
          </tr>
      </xsl:when>       
      <xsl:when test="../@id = 'error-codes'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:spec"/></td>
          </tr>
      </xsl:when>      
      <xsl:when test="../@id = 'overlay-link-types'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:spec"/></td>
          </tr>
      </xsl:when>       
      <xsl:when test="../@id = 'overlay-link-protocols'">
        <tr>
      <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
          </tr>
    </xsl:when>       
      <xsl:when test="../@id = 'forwarding-options'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:spec"/></td>
          </tr>
      </xsl:when>          
      <xsl:when test="../@id = 'probe-info'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:spec"/></td>
          </tr>
      </xsl:when>        
      <xsl:when test="../@id = 'message-extensions'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:spec"/></td>
          </tr>
      </xsl:when>
      <xsl:when test="../@id = 'services'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:spec"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'access-control-policy'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>  
   
    </xsl:choose>
   
  </xsl:template>

</xsl:stylesheet>
