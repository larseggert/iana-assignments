<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'well-known-uris-1'">
        <tr>
          <th>URI Suffix</th>
          <th>Change Controller</th>
          <th>Reference</th>
          <th>Status</th>
          <th>Related Information</th>
          <th>Date Registered</th>
          <th>Date Modified</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'well-known-uris-1'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:related"/></td>
          <td><xsl:value-of select="@date"/></td>
          <td><xsl:value-of select="iana:reviewed"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
