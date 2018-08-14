<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'bgp-parameters-2'">
        <tr><th>Value</th><th>Code</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'bgp-parameters-10'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'bgp-l2-encapsulation-types-registry'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'bgp-l2-tlv-types-registry'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'bgp-aigp'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>

      <xsl:when test="@id = 'route-refresh-subcodes'">
        <tr><th>Value</th><th>Code</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'pmsi-tunnel-types'">
        <tr><th>Value</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'pmsi-attribute-flags'">
        <tr><th>Bit Position (left to right)</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'mcast-vpn-route-types'">
        <tr><th>Value</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'bgp-prefix-sid-tlv-types'">
        <tr><th>Value</th><th>Type</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:otherwise>
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:otherwise>
      
    </xsl:choose>
  </xsl:template>



  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'bgp-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'bgp-parameters-10'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'bgp-l2-encapsulation-types-registry'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'bgp-l2-tlv-types-registry'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'bgp-aigp'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
