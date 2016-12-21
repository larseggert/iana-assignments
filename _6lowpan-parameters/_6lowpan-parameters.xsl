<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = '_6lowpan-parameters-1'">
        <tr><th>Bit Pattern</th><th>Page</th><th>Header Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = '_6lowpan-parameters-2'">
        <tr><th>Address Range</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'lowpan_nhc'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'esc-extension-type'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = '_6lowpan-parameters-1'">
        <tr>
          <td style="font-family:monospace"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:page"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = '_6lowpan-parameters-2'">
        <tr>
          <td style="font-family:monospace"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'lowpan_nhc'">
        <tr>
          <td style="font-family:monospace"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'esc-extension-type'">
        <tr>
          <td style="font-family:monospace"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when> 
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
