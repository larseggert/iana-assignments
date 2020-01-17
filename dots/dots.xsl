<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'cddl-control-operators'">
        <tr>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dots-signal-channel-cbor-key-values'">
        <tr>
          <th>Parameter Name</th>
          <th>CBOR Key Value</th>
          <th>CBOR Major Type</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dots-signal-channel-conflict-status-codes'
        or @id = 'dots-signal-channel-status-codes'
        or @id = 'dots-signal-channel-conflict-cause-codes'
        or @id = 'dots-signal-channel-attack-status-codes'">
        <tr>
          <th>Code</th>
          <th>Label</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'dots-signal-channel-cbor-key-values'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:key"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dots-signal-channel-conflict-status-codes'
        or ../@id = 'dots-signal-channel-status-codes'
        or ../@id = 'dots-signal-channel-conflict-cause-codes'
        or ../@id = 'dots-signal-channel-attack-status-codes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
