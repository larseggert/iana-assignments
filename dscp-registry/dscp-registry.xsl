<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'dscp-registry-1'">
        <tr><th>Pool</th><th>Codepoint Space</th><th>Registration
            Procedure</th><th>Note</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dscp-registry-2'">
        <tr><th>Name</th><th>Value (Binary)</th><th>Value (Decimal)</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'dscp-registry-1'">
        <tr>
          <td><xsl:value-of select="iana:pool"/></td>
          <td style="font-family:monospace"><xsl:value-of select="iana:space"/></td>
          <td><xsl:value-of select="iana:registration_rule"/></td>
          <td><xsl:value-of select="iana:note"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dscp-registry-2'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td style="font-family:monospace"><xsl:value-of select="iana:space"/></td>
          <td><xsl:value-of select="iana:decimal_space"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
