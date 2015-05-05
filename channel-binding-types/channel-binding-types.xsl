<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Channel-binding unique prefix</th>
      <th>Channel-binding type</th>
      <th>Channel type</th>
      <th>Published specification</th>
      <th>Channel-binding is secret</th>
      <th>Description</th>
      <th>Intended usage</th>
      <th>Person and email address to contact for further information</th>
      <th>Owner/Change controller name and email address</th>
      <th>Expert reviewer name and contact information</th>
      <th>Registration Date</th>
      <th>Last Updated</th>
      <th>Note</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:value-of select="iana:binding_type"/></td>
      <td><xsl:apply-templates select="iana:channel_type"/></td>
      <td><xsl:apply-templates select="iana:spec/iana:xref"/></td>
      <td><xsl:value-of select="iana:secret"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:value-of select="iana:usage"/></td>
      <td><xsl:apply-templates select="iana:contact/iana:xref"/></td>
      <td><xsl:apply-templates select="iana:owner/iana:xref"/></td>
      <td><xsl:apply-templates select="iana:expert/iana:xref"/></td>
      <td align="center"><xsl:value-of select="@date"/></td>
      <td align="center"><xsl:value-of select="@updated"/></td>
      <td><xsl:apply-templates select="iana:note"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
