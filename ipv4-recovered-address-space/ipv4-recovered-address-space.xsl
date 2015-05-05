<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
    <xsl:when test="@id = 'ipv4-recovered-address-space-1'">
    <tr><th>Start address</th><th>End address</th><th>Returned by</th><th>Date recovered</th><th>Status</th></tr>
    </xsl:when>
      <xsl:when test="@id = 'ipv4-recovered-address-space-2'">
        <tr><th>Start address</th><th>End address</th><th>Designation</th><th>Date</th><th>Whois</th><th>Status</th><th>Note</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <xsl:choose>
        <xsl:when test="../@id = 'ipv4-recovered-address-space-1'">
      <td><xsl:value-of select="iana:start"/></td>
      <td><xsl:value-of select="iana:end"/></td>
      <td><xsl:value-of select="iana:returned"/></td>
      <td><xsl:value-of select="iana:date"/></td>
      <td><xsl:value-of select="iana:status"/></td>
        </xsl:when>
         <xsl:when test="../@id = 'ipv4-recovered-address-space-2'">
            <td><xsl:value-of select="iana:start"/></td>
            <td><xsl:value-of select="iana:end"/></td>
            <td><xsl:value-of select="iana:designation"/></td>
            <td><xsl:value-of select="iana:date"/></td>
            <td><xsl:value-of select="iana:whois"/></td>
            <td><xsl:value-of select="iana:status"/></td>
           <td><xsl:value-of select="iana:notes"/></td>
          </xsl:when>
         </xsl:choose>
    </tr>
  </xsl:template>
</xsl:stylesheet>

