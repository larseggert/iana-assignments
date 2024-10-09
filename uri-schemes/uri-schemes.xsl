<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
    <xsl:when test="@id = 'uri-schemes-1'">
    <tr>
      <th>URI Scheme</th>
      <th>Template</th>
      <th>Description</th>
      <th>Status</th>
      <th>Well-Known URI Support</th>
      <th>Reference</th>
      <th>Notes</th>
    </tr>
  </xsl:when>
  <xsl:when test="@id = 'ipn-scheme-uri-allocator-identifiers'">
    <tr>
      <th>Name</th>
      <th>Range (dec)</th>
      <th>Range (hex)</th>
      <th>Range Length (Bits)</th>
      <th>Reference</th>
      <th>Change Controller</th>
    </tr>
  </xsl:when>
  <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
  </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
  <xsl:choose>
    <xsl:when test="../@id = 'uri-schemes-1'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:apply-templates select="iana:file"/></td>
      <td><xsl:apply-templates select="iana:description"/></td>
      <td><xsl:value-of select="iana:status"/></td>
      <td><xsl:apply-templates select="iana:well-known"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
      <td><xsl:apply-templates select="iana:notes"/></td>
    </tr>
  </xsl:when>
  <xsl:when test="../@id = 'ipn-scheme-uri-allocator-identifiers'">
    <tr>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:value-of select="iana:dec"/></td>
      <td><xsl:value-of select="iana:hex"/></td>
      <td><xsl:apply-templates select="iana:bits"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
      <td><xsl:apply-templates select="iana:controller"/></td>
    </tr>
  </xsl:when>
  <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
</xsl:choose>
</xsl:template>
</xsl:stylesheet>
