<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr><th>Number</th><th>Description</th><th>WHOIS</th><th>RDAP</th><th>Reference</th><th>Registration Date</th></tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td align="center"><xsl:value-of select="iana:number"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:value-of select="iana:whois"/></td>
      <td style="white-space: pre"><xsl:call-template name="rdap"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
      <td><xsl:value-of select="iana:date"/></td>
    </tr>
  </xsl:template>

  <xsl:template name="rdap">
    <xsl:for-each select="iana:rdap/iana:server">
      <xsl:value-of select="." />
      <xsl:if test="position() != last()">
        <br />
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
