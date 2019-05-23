<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:import href="../_support/iana-registry.xsl" />
  
  <xsl:template name="iana:record_header">
    <tr>
      <th>ID</th>
      <th>Registrar Name</th>
      <th>Status</th>
      <th>RDAP Base URL</th>
    </tr>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <tr>
      <td align="center"><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:value-of select="iana:status"/></td>
      <td style="white-space: pre"><xsl:call-template name="rdapurl"/></td>
    </tr>
  </xsl:template>
  
  
  <xsl:template name="rdapurl">
    <xsl:for-each select="iana:rdapurl/iana:server">
      <xsl:value-of select="." />
      <xsl:if test="position() != last()">
        <br />
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>
