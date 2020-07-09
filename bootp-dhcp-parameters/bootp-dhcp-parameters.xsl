<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:registryempty">
  </xsl:template>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'options'">
        <tr><th>Tag</th><th>Name</th><th>Data
            Length</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'message-type-53'">
        <tr><th>Value</th><th>Message Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'type-63-sub-options'">
        <tr><th>Value</th><th>Message Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'type-122-sub-options'">
        <tr><th>Code</th><th>Sub-Option Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'type-151'">
        <tr><th>Status-Code</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'type-156'">
        <tr><th>State</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'altitude'">
        <tr><th>Type</th><th>Altitude Field Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'datum'">
        <tr><th>Datum</th><th>Datum Field Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'geoloc-option-version'">
        <tr><th>Version</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'control-mask-bit'">
        <tr><th>Bit</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'relay-agent-sub-options'">
        <tr><th>Code</th><th>Sub-Option Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'authentication-protocol-id'">
        <tr><th>Value</th><th>Protocol</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'authentication-algorithm-id'">
        <tr><th>Value</th><th>Algorithm</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'authentication-rdm-id'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ieee-80221-service-type'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ntp-time-source'"> <!--pointer only -->
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'vss-type'">
        <tr><th>Type</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'options'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:length"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
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
