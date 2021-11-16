<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'hpke-kem-ids'">
        <tr>
          <th>Value</th>
          <th>KEM</th>
          <th>Nsecret</th>
          <th>Nenc</th>
          <th>Npk</th>
          <th>Nsk</th>
          <th>Auth</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'hpke-kdf-ids'">
        <tr>
          <th>Value</th>
          <th>KDF</th>
          <th>Nh</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'hpke-aead-ids'">
        <tr>
          <th>Value</th>
          <th>AEAD</th>
          <th>Nk</th>
          <th>Nn</th>
          <th>Nt</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'hpke-kem-ids'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:kem"/></td>
          <td><xsl:value-of select="iana:nsecret"/></td>
          <td><xsl:value-of select="iana:nenc"/></td>
          <td><xsl:value-of select="iana:npk"/></td>
          <td><xsl:value-of select="iana:nsk"/></td>
          <td><xsl:value-of select="iana:auth"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'hpke-kdf-ids'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:kdf"/></td>
          <td><xsl:value-of select="iana:nh"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'hpke-aead-ids'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:aead"/></td>
          <td><xsl:value-of select="iana:nk"/></td>
          <td><xsl:value-of select="iana:nn"/></td>
          <td><xsl:value-of select="iana:nt"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
