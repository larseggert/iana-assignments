<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'profiles'">
        <tr>
          <th>Profile</th>
          <th>Status</th>
          <th>Digest</th>
          <th>Auth</th>
          <th>Key Exchange</th>
          <th>Encryption</th>
          <th>Descriptor Array</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'profiles'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:digest"/></td>
          <td><xsl:apply-templates select="iana:auth"/></td>
          <td><xsl:apply-templates select="iana:key"/></td>
          <td><xsl:apply-templates select="iana:encryption"/></td>
          <td><xsl:apply-templates select="iana:descriptor"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
