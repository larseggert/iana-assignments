<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th class="sortIPv6">Prefix</th>
      <th>Designation</th>
      <th>Date</th>
      <th>WHOIS</th>
      <th>RDAP</th>
      <th>Status</th>
      <th>Note</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:prefix"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:value-of select="@date"/></td>
      <td><xsl:value-of select="iana:whois"/></td>
      <td style="white-space: pre"><xsl:call-template name="rdap"/></td>
      <td><xsl:value-of select="iana:status"/></td>
      <td><xsl:apply-templates select="iana:notes"/></td>
    </tr>
  </xsl:template>

  <xsl:template name="rdap">
    <xsl:for-each select="iana:rdap/iana:server">
      <xsl:value-of select="." />
      <xsl:if test="position() != last()">
        <br />
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
