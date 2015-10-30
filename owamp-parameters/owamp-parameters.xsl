<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'control-command-numbers'">
    <tr><th>Value</th><th>Description</th><th>Semantics Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'owamp-modes'">
        <tr><th>Bit Position</th><th>Description</th><th>Semantics Definition</th><th>Reference</th></tr>
      </xsl:when>
      </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'control-command-numbers'">
    <tr>
      <td align="center"><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:semantics"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
      </xsl:when>
      <xsl:when test="../@id = 'owamp-modes'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:semantics"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
