<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_style">
    <colgroup><col align="center"/><col align="center"/><col/><col/><col/></colgroup>
  </xsl:template>

  <xsl:template name="iana:record_header">
    <tr><th>Country-Code</th><th>Serial Number</th><th>Reference</th><th>Requestors</th><th>Status</th></tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td align="center"><xsl:value-of select="iana:country"/></td>
      <td align="center"><xsl:value-of select="iana:serial"/></td>
      <td><xsl:apply-templates select="iana:xref[@type='uri' or @type='rfc' or @type='draft' or @type='registry']" /></td>
      <td><xsl:apply-templates select="iana:xref[@type='person']"/><br/></td>
      <td><xsl:value-of select="iana:status"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

