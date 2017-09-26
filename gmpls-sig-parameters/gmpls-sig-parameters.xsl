<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
      
      
      <xsl:when test="@id = 'gmpls-sig-parameters-5'">
        <tr><th>Value</th><th>Type</th><th>Technology</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gmpls-sig-parameters-6'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gmpls-sig-parameters-7'">
        <tr><th>Type</th><th>Length</th><th>Format</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gmpls-sig-parameters-8'">
        <tr><th>Bit Number</th><th>Hex Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'granularities'">
        <tr><th>Value</th><th>Switching Granularity</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'sender-tspec'">
        <tr><th>Type</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'bandwidth-profiles'">
        <tr><th>Bit Number</th><th>Hex Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'hierarchy'">
        <tr><th>Bit Number</th><th>Hex Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'grid'">
        <tr><th>Value</th><th>Grid</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dwdm-channel-spacing'">
        <tr><th>Value</th><th>Channel Spacing (GHz)</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'cwdm-channel-spacing'">
        <tr><th>Value</th><th>Channel Spacing (nm)</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'otn-signal-type'">
        <tr><th>Value</th><th>Signal Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'generalized-scsi-tlv-type'">
        <tr>
          <th>Value</th>
          <th>SCSI-TLV</th>
          <th>Switching Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
    <xsl:choose>
      
      
      <xsl:when test="../@id = 'gmpls-sig-parameters-5'">
        <td align="center"><xsl:value-of select="iana:value"/></td>
         <td><xsl:value-of select="iana:type"/></td>
        <td><xsl:value-of select="iana:technology"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'gmpls-sig-parameters-6'">
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'gmpls-sig-parameters-7'">
        <td align="center"><xsl:value-of select="iana:type"/></td>
        <td><xsl:value-of select="iana:length"/></td>
        <td><xsl:value-of select="iana:format"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'gmpls-sig-parameters-8'">
        <td align="center"><xsl:value-of select="iana:bit_number"/></td>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'bandwidth-profiles'">
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:hex"/></td>
        <td><xsl:value-of select="iana:type"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'hierarchy'">
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:hex"/></td>
        <td><xsl:value-of select="iana:type"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'generalized-scsi-tlv-type'">
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:value-of select="iana:switching"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:otherwise>
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:type"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:otherwise>
    </xsl:choose>
    </tr>
  </xsl:template>
</xsl:stylesheet>
