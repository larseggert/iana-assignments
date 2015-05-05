<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'xml-schemas'">
        <tr><th>Schema Name</th>
          <th>Version</th>
          <th>Namespace</th>
          <th>Specification URI</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'enumeration'">
        <tr><th>Attribute Name</th><th>Attribute Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'xml-schemas'">
        <tr>
          <td align="center"><xsl:value-of select="iana:schema"/></td>
          <td><xsl:value-of select="iana:version"/></td>
          <td><xsl:apply-templates select="iana:namespace"/></td>
          <td><xsl:apply-templates select="iana:specification"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'enumeration'">
        <tr>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
