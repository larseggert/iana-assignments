<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'sid-mega-range'">
        <tr>
          <th>Entry Point</th>
          <th>Size</th>
          <th>Allocation</th>
          <th>Organization Name</th>
          <th>URL</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'yang-sid-range'">
        <tr>
        <th>Entry Point</th>
        <th>Size</th>
        <th>Module Name</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'yang-sid'">
        <tr>
        <th>YANG Module Name</th>
        <th>YANG File</th>
        <th>SID File</th>
        <th>Size</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'sid-mega-range'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:entry_size"/></td>
          <td><xsl:apply-templates select="iana:allocation"/></td>
          <td><xsl:apply-templates select="iana:org"/></td>
          <td><xsl:apply-templates select="iana:url"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'yang-sid-range'"> 
      <tr>
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td align="center"><xsl:value-of select="iana:entry_size"/></td>
        <td><xsl:apply-templates select="iana:module"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
    </xsl:when>
    <xsl:when test="../@id = 'yang-sid'"> 
      <tr>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:file"/></td>
        <td><xsl:apply-templates select="iana:file"/></td>
        <td><xsl:value-of select="iana:size"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
    </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
