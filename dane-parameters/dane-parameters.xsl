<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <tr>
    <xsl:choose>
    <xsl:when test="@id = 'certificate-usages'">
      <th>Value</th><th>Acronym</th><th>Short Description</th><th>Reference</th>
    </xsl:when>
      <xsl:when test="@id = 'selectors'">
        <th>Value</th><th>Acronym</th><th>Short Description</th><th>Reference</th></xsl:when>
      <xsl:when test="@id = 'matching-types'">
        <th>Value</th><th>Acronym</th><th>Short Description</th><th>Reference</th></xsl:when></xsl:choose>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
    <xsl:choose>
      <xsl:when test="../@id = 'certificate-usages'">
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:acronym"/></td>
      <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
    </xsl:when>
      <xsl:when test="../@id = 'selectors'">
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:acronym"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </xsl:when>
      <xsl:when test="../@id = 'matching-types'">
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:acronym"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when></xsl:choose>
    </tr>
  </xsl:template>

</xsl:stylesheet>
