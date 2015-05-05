<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Name of Extension</th>
      <th>Document Status</th>
      <th>Reference</th>
      <th>Registrant</th>
      <th>TLDs</th>
      <th>IPR Disclosure</th>
      <th>Status</th>
      <th>Notes</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:apply-templates select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:docstatus"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
      <td><xsl:apply-templates select="iana:registrant"/></td>
      <td><xsl:apply-templates select="iana:tlds"/></td>
      <td><xsl:apply-templates select="iana:ipr"/></td>
      <td><xsl:apply-templates select="iana:status"/></td>
      <td><xsl:apply-templates select="iana:notes"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
