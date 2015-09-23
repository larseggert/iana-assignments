<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'top-level'">
        <tr><th>Value</th><th>Top Level Types</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'subtlv1'">
        <tr><th>Value</th><th>Sub-TLV</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'subtlv2'">
        <tr><th>Value</th><th>Sub-TLV</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'subtlv5'">
        <tr><th>Value</th><th>Sub-TLV</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'subtlv6'">
        <tr><th>Value</th><th>Length</th><th>Sub-TLV</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'otn-tdm-scsi'">
        <tr><th>Value</th><th>Sub-TLV</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Sub-TLV</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'top-level'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'subtlv6'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:length"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
