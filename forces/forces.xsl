<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/> 
  <xsl:template name="iana:record_header">
  <xsl:choose> 
      
      <xsl:when test="@id = 'message-types'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'oper-tlv-types'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
    
    <xsl:when test="@id = 'header-flags'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>
    
    <xsl:when test="@id = 'tlv-types'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>
    
    <xsl:when test="@id = 'result-tlv'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>
    
    <xsl:when test="@id = 'extendedresult-tlv'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>
    
    <xsl:when test="@id = 'setup'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>
    
    <xsl:when test="@id = 'teardown'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>
    
    <xsl:when test="@id = 'logical-types'">
      <tr><th>LFB Class Identifier</th>
        <th>LFB Class Name</th>
        <th>LFB Version</th>
        <th>Description</th>
        <th>Reference</th></tr>
    </xsl:when>
    <xsl:when test="@id = 'metadata-id'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>    
    <xsl:when test="@id = 'exception-id'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>    
    <xsl:when test="@id = 'validate-error-id'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>
    
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'message-types'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'oper-tlv-types'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'header-flags'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'tlv-types'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'result-tlv'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'extendedresult-tlv'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'setup'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'teardown'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'logical-types'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:version"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:spec"/></td>
        </tr>
      </xsl:when>      
      <xsl:when test="../@id = 'metadata-id'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:spec"/></td>
        </tr>
      </xsl:when>      
      <xsl:when test="../@id = 'exception-id'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:spec"/></td>
        </tr>
      </xsl:when>      
      <xsl:when test="../@id = 'validate-error-id'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:spec"/></td>
        </tr>
      </xsl:when>
      
      <xsl:otherwise>
      </xsl:otherwise>
      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
