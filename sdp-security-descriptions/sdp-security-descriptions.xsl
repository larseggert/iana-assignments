<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'sdp-security-descriptions-1'">
        <tr><th>Key Methods</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'sdp-security-descriptions-2'">
        <tr>
          <th>Media Stream Transport Name</th>
          <th>Supported Key Methods</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'sdp-security-descriptions-3'">
        <tr>
          <th>Crypto Suite Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'sdp-security-descriptions-4'">
        <tr>
          <th>Parameter Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
    <xsl:choose>
      <xsl:when test="../@id = 'sdp-security-descriptions-1'">
        <td><xsl:value-of select="iana:method" /></td>
        <td><xsl:apply-templates select="iana:xref" /></td>
      </xsl:when>
      <xsl:when test="../@id = 'sdp-security-descriptions-2'">
        <td><xsl:value-of select="iana:name" /></td>
        <td>
          <xsl:for-each select="iana:method">
            <xsl:value-of select="."/>
            <xsl:if test="position() != last()">, </xsl:if>
          </xsl:for-each>
        </td>
        <td><xsl:apply-templates select="iana:xref" /></td>
      </xsl:when>
      <xsl:when test="../@id = 'sdp-security-descriptions-3'">
        <td><xsl:value-of select="iana:name" /></td>
        <td><xsl:apply-templates select="iana:xref" /></td>
      </xsl:when>
      <xsl:when test="../@id = 'sdp-security-descriptions-4'">
        <td><xsl:value-of select="iana:name" /></td>
        <td><xsl:apply-templates select="iana:xref" /></td>
      </xsl:when>
    </xsl:choose>
    </tr>
  </xsl:template>
</xsl:stylesheet>
