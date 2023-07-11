<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'ospfv2-parameters-14'">
        <tr><th>Bit</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'instance-ids'">
        <tr><th>Value</th><th>Designation</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'extended-link-tlv-sub-tlvs'">
        <tr><th>Value</th><th>Designation</th><th>L2BM</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ip-algorithm-prefix-reachability-sub-tlv-flags'">
        <tr><th>Bit</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ospfv2-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'extended-link-tlv-sub-tlvs'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:l2bm"/></td>
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

  <xsl:template name="iana:registryempty">
  </xsl:template>
  
</xsl:stylesheet>
