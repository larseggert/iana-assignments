<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <tr><th>Capability Name</th><th>Description</th><th>Syntax</th><th>Contact</th><th>Reference</th></tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td align="left"><xsl:value-of select="iana:name"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td align="left"><xsl:value-of select="iana:syntax"/></td>
      <td align="left"><xsl:value-of select="iana:contact"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
