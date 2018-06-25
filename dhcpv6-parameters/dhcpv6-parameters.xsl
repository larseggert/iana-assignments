<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template match="iana:record">
  </xsl:template>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'dhcpv6-parameters-1'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dhcpv6-parameters-2'">
        <tr><th>Value</th>
          <th>Description</th>
          <th>Client ORO</th>
          <th>Singleton Option</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dhcpv6-parameters-3'">
        <tr><th>Code</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dhcpv6-parameters-4'">
        <tr><th>Code</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dhcpv6-parameters-5'">
        <tr><th>Code</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dhcpv6-parameters-6'">
        <tr><th>Type</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dhcpv6-parameters-7'">
        <tr><th>Code</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ieee-80221-service-type'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'processor-architecture'">
        <tr><th>Type</th><th>Architecture Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'options-relay-supplied'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'vss-option-types'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'radius-option-attributes'">
        <tr><th>Type Code</th><th>Attribute</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'ntp-time-source'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'option-codes-s46-priority-option'">
        <tr><th>Option Code</th><th>S46 Mechanism</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'dhcpv6-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:oro"/></td>
          <td><xsl:apply-templates select="iana:singleton"/></td>
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
