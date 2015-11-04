<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'nlri-types'">
        <tr>
          <th>Type</th>
          <th>NLRI Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'protocol-ids'">
        <tr>
          <th>Protocol-ID</th>
          <th>NLRI information source protocol</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'well-known-instance-ids'">
        <tr>
          <th>Identifier</th>
          <th>Routing Universe</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'node-descriptor-link-descriptor-prefix-descriptor-attribute-tlv'">
        <tr>
          <th>TLV Code Point</th>
          <th>Description</th>
          <th>IS-IS TLV/Sub-TLV</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:otherwise>
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
      
    </xsl:choose>
  </xsl:template>


  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'node-descriptor-link-descriptor-prefix-descriptor-attribute-tlv'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:tlv-sub-tlv"/></td>
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
