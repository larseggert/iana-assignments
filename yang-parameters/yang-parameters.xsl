<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Name</th>
      <th>File</th>
      <th>Maintained by IANA?</th>
      <th>Namespace (Modules Only)</th>
      <th>Prefix (Modules Only)</th>
      <th>Module (Submodules Only)</th>
      <th>Reference</th>
      <th>Notes</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:apply-templates select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:file"/></td>
      <td align="center"><xsl:apply-templates select="iana:iana"/></td>
      <td><xsl:apply-templates select="iana:namespace"/></td>
      <td><xsl:apply-templates select="iana:prefix"/></td>
      <td><xsl:apply-templates select="iana:module"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
      <td><xsl:apply-templates select="iana:notes"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
