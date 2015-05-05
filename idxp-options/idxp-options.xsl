<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <tr>
      <th>Registration</th>
      <th>Option Identification</th>
      <th>Contains</th>
      <th>Processing Rules</th>
      <th>Contact Information</th>
    </tr>
  </xsl:template>
  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:contains"/></td>
      <td><xsl:apply-templates select="iana:processing_rules"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
