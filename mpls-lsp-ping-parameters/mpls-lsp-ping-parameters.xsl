<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'message-types' 
        or @id = 'reply-modes' 
        or @id = 'return-codes'">
        <tr><th>Value</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tlvs'">
        <tr><th>Type</th><th>TLV Name</th><th>Reference</th><th>Sub-TLV Registry</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'sub-tlv-1-16-21' 
        or @id = 'sub-tlv-9' 
        or @id = 'sub-tlv-11' 
        or @id = 'sub-tlv-20'
        or @id = 'sub-tlv-23'">
        <tr><th>Sub-Type</th><th>Sub-TLV Name</th><th>Reference</th><th>Comment</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'measurement-timestamp'">
      </xsl:when>
      <xsl:when test="@id = 'loss-delay-control-code-query'">
      </xsl:when>
      <xsl:when test="@id = 'loss-delay-control-code-response'">
      </xsl:when>
      <xsl:when test="@id = 'loss-delay-measurement-tlv'">
      </xsl:when>
      <xsl:when test="@id = 'global-flags'">
        <tr><th>Bit number</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'downstream-mapping'">
        <tr><th>Type #</th>
          <th>Address Type</th>
          <th>K Octets</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'next-hop-address-type'">
        <tr><th>Type</th>
          <th>Type of Next Hop</th>
          <th>Address Length</th>
          <th>IF Length</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ds-flags'
        or @id = 'proxy-flags'">
        <tr><th>Bit Number</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>      
      <xsl:when test="../@id = 'tlvs'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:subtlv"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'sub-tlv-1-16-21' 
        or ../@id = 'sub-tlv-9' 
        or ../@id = 'sub-tlv-11' 
        or ../@id = 'sub-tlv-20'
        or ../@id = 'sub-tlv-23'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:comment"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'measurement-timestamp'">
      </xsl:when>
      <xsl:when test="../@id = 'downstream-mapping'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:size"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'next-hop-address-type'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:addr"/></td>
          <td><xsl:value-of select="iana:if"/></td>
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
