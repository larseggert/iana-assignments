<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'idmef-parameters-names'">
        <tr>
          <th>Class Name</th>
          <th>Attribute Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'idmef-parameters-values'">
        <tr>
          <th>Class Name</th>
          <th>Attribute Name</th>
          <th>Rank</th>
          <th>Keyword</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'idmef-parameters-names'">
        <tr>
          <td><xsl:value-of select="iana:class"/></td>
          <td><xsl:value-of select="iana:attribute"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'idmef-parameters-values'">
        <tr>
          <td><xsl:value-of select="iana:class"/></td>
          <td><xsl:value-of select="iana:attribute"/></td>
          <td><xsl:value-of select="iana:rank"/></td>
          <td><xsl:value-of select="iana:keyword"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
