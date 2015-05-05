<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'rsip-parameters-1'">
        <tr><th>Value</th><th>Parameter</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'rsip-parameters-2'">
        <tr>
          <th>Value</th>
          <th>Addrtype</th>
          <th>Length of value field (in bytes)</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'rsip-parameters-3'">
        <tr><th>Value</th><th>Tunnel Type</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'rsip-parameters-4'">
        <tr><th>Value</th><th>RSIP method</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'rsip-parameters-5'">
        <tr><th>Value</th><th>Local Flow Policy</th><th>Reference</th></tr>
      </xsl:when>       
      
      <xsl:when test="@id = 'rsip-parameters-9'">
        <tr><th>Value</th><th>Remote Flow Policy</th><th>Reference</th></tr>
      </xsl:when> 
      
      <xsl:when test="@id = 'rsip-parameters-6'">
        <tr><th>Value</th><th>Vendor ID</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rsip-parameters-7'">
        <tr>
          <th>Value</th>
          <th>Message</th>
          <th>Implementation</th>
          <th>Status</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rsip-parameters-8'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'rsip-parameters-1' or ../@id = 'rsip-parameters-3' or ../@id = 'rsip-parameters-4' or ../@id = 'rsip-parameters-5' or ../@id = 'rsip-parameters-6' or ../@id = 'rsip-parameters-8'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rsip-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:length"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rsip-parameters-7'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:implementation"/></td>
          <td><xsl:value-of select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rsip-parameters-9'">
      <tr>
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
      </xsl:when>
      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
