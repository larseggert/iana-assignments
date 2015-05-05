<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'alm-alg-ids'">
        <tr><th>ID</th><th>Algorithm Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'alm-message-codes'">
        <tr><th>Code Value</th><th>Message Code Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'alm-error-codes'">
        <tr><th>Code Value</th><th>Error Code Name</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'alm-alg-ids'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
      </xsl:when>
      <xsl:when test="../@id = 'alm-message-codes'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
      </xsl:when>
      <xsl:when test="../@id = 'alm-error-codes'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
      </xsl:when>
    </xsl:choose>      
  </xsl:template>

</xsl:stylesheet>
