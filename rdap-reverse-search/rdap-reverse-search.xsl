<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Property</th>
      <th>Description</th>
      <th>Searchable Resource Type</th>
      <th>Related Resource Type</th>
      <th>Registrant</th>
      <th>Reference</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:apply-templates select="iana:property"/></td>
      <td><xsl:apply-templates select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:searchable"/></td>
      <td><xsl:apply-templates select="iana:related"/></td>
      <td><xsl:apply-templates select="iana:registrant"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
