<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'dns-sec-alg-numbers-1'">
    <tr><th>Number</th><th>Description</th><th>Mnemonic</th><th>Zone<br/>Signing</th><th>Trans.<br/>Sec.</th><th>Use for<br/>DNSSEC Signing</th>
      <th>Use for<br/>DNSSEC Validation</th><th>Implement for<br/>DNSSEC Signing</th>
      <th>Implement for<br/>DNSSEC Validation</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'prime-lengths'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'prime-generator-pairs'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose> 
      <xsl:when test="../@id = 'dns-sec-alg-numbers-1'">
    <tr>
      <td align="center"><xsl:value-of select="iana:number"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:value-of select="iana:mnemonic"/></td>
      <td align="center"><xsl:value-of select="iana:signing"/></td>
      <td align="center"><xsl:value-of select="iana:transsec"/></td>
      <td align="center"><xsl:value-of select="iana:usesigning"/></td>
      <td align="center"><xsl:value-of select="iana:usevalid"/></td>
      <td align="center"><xsl:value-of select="iana:impsigning"/></td>
      <td align="center"><xsl:value-of select="iana:impvalid"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
      </xsl:when>
      <xsl:when test="../@id = 'prime-lengths'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'prime-generator-pairs'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose> 

  </xsl:template>

</xsl:stylesheet>
