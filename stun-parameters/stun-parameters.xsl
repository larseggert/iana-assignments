<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/> 
  <xsl:template name="iana:record_header">
  <xsl:choose> 
      
      <xsl:when test="@id = 'stun-parameters-2'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'stun-parameters-4'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
    <xsl:when test="@id = 'stun-parameters-5'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>
      <xsl:when test="@id = 'stun-parameters-6'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
    <xsl:when test="@id = 'turn-channel'">
      <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
    </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>     
      <xsl:when test="../@id = 'stun-parameters-2'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>      
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
