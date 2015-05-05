<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
      
      <xsl:when test="@id = 'mpls-id-type-2' or @id = 'mpls-id-type-4'">
        <tr><th>Identifier type</th><th>Element</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
    <xsl:choose>
      
      <xsl:when test="../@id = 'mpls-id-type-2' or ../@id = 'mpls-id-type-4'">
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
    </xsl:choose>
    </tr>
  </xsl:template>
</xsl:stylesheet>
