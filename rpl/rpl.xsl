<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'control-codes'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'control-message-options'">
        <tr><th>Value</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ocp'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'security-section-algorithm'">
        <tr><th>Value</th><th>Encryption/MAC</th><th>Signature</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'security-section-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'per-kim-security'">
        <tr><th>Level</th><th>KIM Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dis-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dio-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dao-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dao-ack-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'cc-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dodag-config-option-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rpl-target-option-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'transit-info-option-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'flags' or
        @id = 'rpl-dco-flags' or
        @id = 'rpl-dco-ack-flags'">
        <tr><th>Bit Number</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
        <xsl:when test="@id = 'rpl-non-rej-status'">
        <tr><th>Value</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
        <xsl:when test="@id = 'rpl-rej-status'">
        <tr><th>Value</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'security-section-algorithm'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:encryption"/></td>
          <td><xsl:value-of select="iana:signature"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'per-kim-security'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:kim-value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ocp'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
