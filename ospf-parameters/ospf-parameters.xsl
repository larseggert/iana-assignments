<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'ri-tlv'">
        <tr><th>Value</th><th>TLV Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'router-informational-capability'">
        <tr><th>Bit Number</th><th>Capability Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'router-functional-capability'">
        <tr><th>Bit Number</th><th>Capability Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tunnel-parameter-tlv'">
        <tr><th>Value</th><th>TLV Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'flex-algorithm-prefix-metric-bits'">
        <tr><th>Bit Number</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'flexible-algorithm-definition-tlv-sub-tlvs'">
        <tr><th>Bit Number</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ri-tlv'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
