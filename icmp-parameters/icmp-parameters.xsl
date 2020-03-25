<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'icmp-parameters-types'">
        <tr><th>Type</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'icmp-parameters-ext-classes'">
        <tr><th>Class Value</th><th>Class Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'icmp-parameters-ext-class-1' or @id = 'icmp-parameters-ext-class-2'">
        <tr><th>C-Type (Value)</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'icmp-parameters-ext-class-2-if-roles' or @id = 'icmp-parameters-ext-class-4'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Codes</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td align="center"><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
