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
     <xsl:when test="@id = 'ipv6-parameters-2'">
      <tr>
        <th rowspan="2">Hex Value</th>
        <th colspan="3">Binary Value</th>
        <th rowspan="2">Description</th>
        <th rowspan="2">Reference</th>
      </tr>
      <tr>
        <th>act</th>
        <th>chg</th>
        <th>rest</th>
      </tr>
     </xsl:when>
      <xsl:when test="@id = 'extension-header'">
        <tr>
          <th>Protocol Number</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'taggerId-types'">
        <tr><th>Type</th><th>Mnemonic</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'segment-routing-header-flags'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ipv6-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td align="center"><xsl:value-of select="iana:act"/></td>
          <td align="center"><xsl:value-of select="iana:chg"/></td>
          <td align="center"><xsl:value-of select="iana:rest"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ipv6-parameters-3'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rpl-option-tlv'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'extension-header'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'taggerId-types-ranges'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:registration_rule"/></td>
          <td><xsl:apply-templates select="iana:note"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'taggerId-types'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
