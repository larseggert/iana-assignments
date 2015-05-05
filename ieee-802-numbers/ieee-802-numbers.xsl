<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'ieee-802-numbers-1'">
       <tr>
        <th>Ethertype (decimal)</th>
        <th>Ethertype (hex)</th>
        <th>Exp. Ethernet (decimal)</th>
        <th>Exp. Ethernet (octal)</th>
        <th>Description</th>
        <th>References</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ieee-802-numbers-2'">
       <tr>
        <th>Hex</th>
        <th>Name</th>
        <th>References</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ieee-802-numbers-3'">
       <tr>
        <th>Link Service Access Point (IEEE Binary)</th>
        <th>Link Service Access Point (Internet Binary )</th>
        <th>Link Service Access Point (Decimal)</th>
        <th>Description</th>
        <th>References</th>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ieee-802-numbers-1'">
        <tr>
          <td><xsl:value-of select="iana:type_decimal"/></td>
          <td><xsl:value-of select="iana:type_hex"/></td>
          <td><xsl:value-of select="iana:exp_decimal"/></td>
          <td><xsl:value-of select="iana:exp_octal"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ieee-802-numbers-2'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ieee-802-numbers-3'">
        <tr>
          <td><xsl:value-of select="iana:ieee_binary"/></td>
          <td><xsl:value-of select="iana:internet_binary"/></td>
          <td><xsl:value-of select="iana:decimal"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
