<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Extension Identifier</th>
      <th>Registry Operator</th>
      <th>Specification</th>
      <th>Contact</th>
      <th>Intended Usage</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:apply-templates select="iana:value"/></td>
      <td><xsl:apply-templates select="iana:operator"/></td>            
      <td><xsl:apply-templates select="iana:xref"/></td>
      <td><xsl:apply-templates select="iana:contact"/></td>
      <td><xsl:apply-templates select="iana:usage"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
