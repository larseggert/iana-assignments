<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'qspec-procedure'">
        <tr>
          <th>Message Sequence Value</th>
          <th>Object Combination Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'qspec-procedure'">    
        <tr>
        <td><xsl:value-of select="iana:name"/></td>
        <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:description"/></td>          
          <td><xsl:apply-templates select="iana:xref"/></td>       
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>        
      </xsl:otherwise>        
    </xsl:choose>
    

  </xsl:template>

</xsl:stylesheet>
