<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <tr>
      <xsl:choose>
        <xsl:when test="@id = 'media-types-parameters-1'">
          <th>MIME content-type</th>
          <th>X.400 Body Part</th>
          <th>Reference</th>
        </xsl:when>
        <xsl:when test="@id = 'media-types-parameters-2'">
          <th>X.400 Basic Body Part</th>
          <th>MIME content-type</th>
          <th>Reference</th>
        </xsl:when>
        <xsl:when test="@id = 'media-types-parameters-3'">
          <th>X.400 Extended Body Part</th>
          <th>MIME content-type</th>
          <th>Reference</th>
        </xsl:when>
      </xsl:choose>
    </tr>
  </xsl:template>
  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:from"/></td>
      <td><xsl:value-of select="iana:to"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
