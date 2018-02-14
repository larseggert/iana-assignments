<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:import href="../_support/iana-registry.xsl"/>
  
  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'rolie-urn-parameters'">
        <tr><th>Name</th><th>Extension URI</th><th>Reference</th><th>Subregistry</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rolie-information-types'">
        <tr><th>Name</th><th>Index</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'rolie-urn-parameters'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:sub-registry"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rolie-information-types'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="index"/></td>       
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>
