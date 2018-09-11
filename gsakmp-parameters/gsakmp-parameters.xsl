<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'gsakmp-parameters-1'">
        <tr><th>Grp ID Type</th><th>Value</th><th>Description/Defined In</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-2'">
        <tr><th>Next_Payload_Type</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-3'">
        <tr><th>Exchange_Type</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-4'">
        <tr><th>Policy_Token_Type</th><th>Value</th><th>Definition/Defined In</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-5'">
        <tr><th>Key Download Data Item Type</th><th>Value</th><th>Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-6'">
        <tr><th>Cryptographic_Key_Types</th><th>Value</th><th>Description/Defined In</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-7'">
        <tr><th>Rekey_Event_Type</th><th>Value</th><th>Description/Defined In</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-8'">
        <tr><th>ID_Classification</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-9'">
        <tr><th>ID_Type</th><th>Value</th><th>PKIX Cert Field</th><th>Description/Defined In</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-10'">
        <tr><th>Certificate_Type</th><th>Value</th><th>Description/Defined In</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-11'">
        <tr><th>Signature Type</th><th>Value</th><th>Description/Defined In</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-12'">
        <tr><th>Notification Type</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-13'">
        <tr><th>ACK_Type</th><th>Value</th><th>Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-14'">
        <tr><th>Mechanism_Type</th><th>Value</th><th>Mechanism Choice Data Value Table Reference</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-15'">
        <tr><th>Nonce_Hash_Type</th><th>Value</th><th>Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-16'">
        <tr><th>Key Creation Type</th><th>Value</th><th>Definition/Defined In</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gsakmp-parameters-17'">
        <tr><th>Nonce_Type</th><th>Value</th><th>Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Number</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'gsakmp-parameters-2' or
                      ../@id = 'gsakmp-parameters-3' or
                      ../@id = 'gsakmp-parameters-8' or
                      ../@id = 'gsakmp-parameters-12'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'gsakmp-parameters-9'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:field_name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'gsakmp-parameters-10'">
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        <tr>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
