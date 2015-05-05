<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'mgcp-packages-1'">
        <tr><th>Package Title</th><th>Name</th><th>Version</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'mgcp-packages-2'">
        <tr><th>Package</th><th>Letter</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'mgcp-packages-1'">
        <tr>
          <td><xsl:value-of select="iana:title"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:version"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mgcp-packages-2'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:letter"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
