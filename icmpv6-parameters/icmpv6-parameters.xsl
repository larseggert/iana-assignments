<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl"/>
  <xsl:template name="iana:record_header">
    <xsl:choose>
     
     <xsl:when test="@id = 'icmpv6-parameters-2'">
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'icmpv6-parameters-4'">
      <tr>
        <th>Subtype</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'icmpv6-parameters-5'">
      <tr>
        <th>Type</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      <xsl:when test="@id = 'icmpv6-parameters-6' or @id = 'icmpv6-parameters-7' or @id = 'icmpv6-parameters-8' or @id = 'icmpv6-parameters-9' or @id = 'address-registration' or @id = 'icmpv6-parameters-10'">
      <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'icmpv6-parameters-11'">
      <tr>
        <th>RA Option Bit</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      <xsl:when test="@id = 'sixlowpan-capability-bits'">
      <tr>
        <th>Bit</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      <xsl:when test="@id = 'ipv6-neighbor-discovery-prefix-information-options'">
        <tr>
          <th>PIO Option Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
     <xsl:otherwise>
      <tr>
        <th>Code</th>
        <xsl:if test="iana:record/iana:name"><th>Name</th></xsl:if>
        <xsl:if test="iana:record/iana:xref"><th>Reference</th></xsl:if>
      </tr>
     </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  
  <xsl:template match="iana:record">
    <xsl:choose>
     
     <xsl:when test="../@id = 'icmpv6-parameters-2'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'icmpv6-parameters-4' 
       or ../@id = 'icmpv6-parameters-5' 
       or ../@id = 'icmpv6-parameters-6' 
       or ../@id = 'icmpv6-parameters-7' 
       or ../@id = 'icmpv6-parameters-8' 
       or ../@id = 'icmpv6-parameters-9' 
       or ../@id = 'icmpv6-parameters-10' 
       or ../@id = 'address-registration'
       or ../@id = 'sixlowpan-capability-bits' 
       or ../@id = 'icmpv6-parameters-11'
       or ../@id = 'ipv6-neighbor-discovery-prefix-information-options'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:otherwise>
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <xsl:if test="../iana:record/iana:name"><td><xsl:value-of select="iana:name"/></td></xsl:if>
       <xsl:if test="../iana:record/iana:xref"><td><xsl:apply-templates select="iana:xref"/></td></xsl:if>
      </tr>
     </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
