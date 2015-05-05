<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <xsl:choose> 
        <xsl:when test="@id = 'disp-mod'">
          <th>Modifier</th>
        </xsl:when>
        <xsl:when test="@id = 'disp-not-opt'">
          <th>Option</th>
        </xsl:when>
        <xsl:when test="@id = 'ext-field-names'">
          <th>Extension-field-names</th>
          <th>Description</th>
        </xsl:when>
      </xsl:choose>
      <th>Reference</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <xsl:choose> 
        <xsl:when test="../@id = 'ext-field-names'">
          <td><xsl:value-of select="iana:description"/></td>
        </xsl:when>
      </xsl:choose>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
