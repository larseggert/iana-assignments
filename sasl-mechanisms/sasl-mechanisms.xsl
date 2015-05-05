<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
       <tr>
        <th>Mechanism</th>
        <th>Usage</th>
        <th>Reference</th>
        <th>Owner</th>
       </tr>
  </xsl:template>
  <xsl:template match="iana:record">
       <tr>
        <td><xsl:value-of select="iana:mechanism"/></td>
        <td><xsl:value-of select="iana:usage"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
       </tr>
  </xsl:template>
</xsl:stylesheet>
