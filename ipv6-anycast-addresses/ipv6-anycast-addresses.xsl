<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
       <tr>
        <th>Decimal</th>
        <th>Hexadecimal</th>
        <th>Description</th>
        <th>Reference</th>
        <th>Note</th>
       </tr>
  </xsl:template>
 <xsl:template match="iana:record">
  <xsl:choose>
   <xsl:when test="../@id = 'ipv6-anycast-addresses-1'">
    <tr>
     <td><xsl:value-of select="iana:decimal"/></td>
     <td><xsl:value-of select="iana:hexadecimal"/></td>
     <td><xsl:value-of select="iana:description"/></td>
     <td><xsl:apply-templates select="iana:xref"/></td>
     <td><xsl:apply-templates select="iana:note"/></td>
    </tr>
   </xsl:when>
   <xsl:when test="../@id = 'ipv6-anycast-addresses-2'">
    <tr>
     <td><xsl:value-of select="iana:decimal"/></td>
     <td><xsl:value-of select="iana:hexadecimal"/></td>
     <td><xsl:value-of select="iana:description"/></td>
     <td><xsl:apply-templates select="iana:xref"/></td>
     <td><xsl:apply-templates select="iana:note"/></td>
    </tr>
   </xsl:when>
  </xsl:choose>
 </xsl:template>
</xsl:stylesheet>
