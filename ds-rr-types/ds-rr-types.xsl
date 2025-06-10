<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Value</th>
      <th>Description</th>
      <th>Use for DNSSEC Delegation</th>
      <th>Use for DNSSEC Validation</th>
      <th>Implement for DNSSEC Delegation</th>
      <th>Implement for DNSSEC Validation</th>
      <th>Reference</th></tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td align="center"><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td align="center"><xsl:value-of select="iana:usedeleg"/></td>
      <td align="center"><xsl:value-of select="iana:usevalid"/></td>
      <td align="center"><xsl:value-of select="iana:impdeleg"/></td>
      <td align="center"><xsl:value-of select="iana:impvalid"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
