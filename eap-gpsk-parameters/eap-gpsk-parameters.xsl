<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:import href="../_support/iana-registry.xsl" />
  
  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'eap-gpsk-parameters-1'">
        <tr><th>CSuite/Specifier</th>
          <th>KS</th>
          <th>Encryption</th>
          <th>ML</th>
          <th>Integrity/KDF MAC</th>
          <th>Key Derivation Function</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-gpsk-parameters-2'">
        <tr><th>PData/Specifier</th><th>Description</th><th>Confidentiality</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-gpsk-parameters-3'">
        <tr><th>Failure Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-gpsk-parameters-4'">
        <tr><th>OP Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'eap-gpsk-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:ks"/></td>
          <td><xsl:value-of select="iana:encryption"/></td>
          <td><xsl:value-of select="iana:ml"/></td>
          <td><xsl:value-of select="iana:integrity"/></td>
          <td><xsl:value-of select="iana:key"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-gpsk-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:conidentiality"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-gpsk-parameters-3'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-gpsk-parameters-4'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>