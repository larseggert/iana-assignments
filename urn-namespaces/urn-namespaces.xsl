<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr><th>URN Namespace</th>
      <th>Template</th>
      <th>Reference</th></tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'urn-namespaces-1'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:template"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
       </xsl:when>
      <xsl:when test="../@id = 'urn-namespaces-2'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
