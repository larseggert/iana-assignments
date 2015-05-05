<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:import href="../_support/iana-registry.xsl" />
  
  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'bfcp-parameters-1'">
        <tr><th>Type</th><th>Attribute</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'bfcp-parameters-2'">
        <tr><th>Type</th><th>Primitive</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'bfcp-parameters-3'">
        <tr><th>Type</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'bfcp-parameters-4'">
        <tr><th>Type</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'bfcp-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:attribute"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'bfcp-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:primitive"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'bfcp-parameters-3'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'bfcp-parameters-4'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:meaning"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>
