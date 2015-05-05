<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'status-codes'">
        <tr><th>Status Code</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'versions'">
        <tr><th>DSKPP Version</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'prf-alg-id'">
        <tr><th>Common Name</th><th>URI</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'keys'">
        <tr><th>Name</th><th>URI</th><th>Deprecated</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'status-codes'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'versions'">
        <tr>
          <td><xsl:value-of select="iana:version"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'prf-alg-id'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:uri"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'keys'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:uri"/></td>
          <td><xsl:value-of select="iana:deprecated"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
