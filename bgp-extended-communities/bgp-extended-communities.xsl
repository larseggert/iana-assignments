<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl"/>
  <xsl:template name="iana:record_header">
    <tr>
    <xsl:choose>
     <xsl:when test="@id = 'traffic-action-fields'
       or @id = 'e-tree-flags'">
       <th>Bit</th>
       <th>Name</th>
       <th>Reference</th>
       <th>Date</th>
     </xsl:when>
      <xsl:when test="@id = 'transitive'
        or @id = 'non-transitive'
        or @id = 'trans-ipv6'
        or @id = 'non-trans-ipv6'">
        <th>Type Value</th>
        <th>Name</th>
        <th>Reference</th>
        <th>Date</th>
      </xsl:when>
      <xsl:when test="@id = 'additional-pmsi-tunnel-attribute-flags'">
        <th>Bit Flag</th>
        <th>Name</th>
        <th>Reference</th>
        <th>Date</th>
      </xsl:when>
      <xsl:when test="@id = 'evpn'
        or @id = 'trans-two-octet-as'
        or @id = 'non-trans-two-octet-as'
        or @id = 'trans-four-octet-as'
        or @id = 'non-trans-four-octet-as'
        or @id = 'trans-ipv4'
        or @id = 'non-trans-ipv4'
        or @id = 'trans-opaque'
        or @id = 'non-trans-opaque'
        or @id = 'bgp-extended-communities-10'
        or @id = 'generic-transitive-experimental-part2'
        or @id = 'generic-transitive-experimental-part3'
        or @id = 'evpn-layer-2-attributes-control-flags'">
        <th>Sub-Type Value</th>
        <th>Name</th>
        <th>Reference</th>
        <th>Date</th>
      </xsl:when>
      <xsl:otherwise>
        <th>Type Value</th>
        <th>Name</th>
        <th>Reference</th>
        <th>Date</th>
     </xsl:otherwise>
    </xsl:choose>
  </tr>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <tr>
      <xsl:choose>
       
        <xsl:when test="../@id = 'traffic-action-fields'">
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="@date"/></td>
        </xsl:when>
        <xsl:when test="../@id = 'transitive' 
          or ../@id = 'non-transitive' or ../@id = 'trans-ipv6' or ../@id = 'non-trans-ipv6'">
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="@date"/></td>
        </xsl:when>
        <xsl:when test="../@id = 'evpn' 
          or ../@id = 'trans-two-octet-as' or ../@id = 'non-trans-two-octet-as' or ../@id = 'trans-four-octet-as'
          or ../@id = 'non-trans-four-octet-as'
          or ../@id = 'trans-ipv4'
          or ../@id = 'non-trans-ipv4'
          or ../@id = 'trans-opaque'
          or ../@id = 'non-trans-opaque'
          or ../@id = 'bgp-extended-communities-10'
          or ../@id = 'generic-transitive-experimental-part2'
          or ../@id = 'generic-transitive-experimental-part3'">
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="@date"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="@date"/></td>
        </xsl:otherwise>

      </xsl:choose>
    </tr>
  </xsl:template>
</xsl:stylesheet>
