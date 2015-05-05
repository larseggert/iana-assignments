<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'hip-parameters-1'">
        <tr><th>Value</th><th>Packet Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'hip-parameters-2'">
        <tr><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'hip-parameters-4'">
        <tr><th>Value</th><th>Parameter Type</th><th>Length</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'hip-parameters-5'">
        <tr><th>Value</th><th>Group ID</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'hip-parameters-6'">
        <tr><th>Value</th><th>Suite ID</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'hit-suite-id'">
        <tr><th>Value</th><th>Suite ID</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'hip-parameters-7'">
        <tr><th>Value</th><th>DI-Type</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'hip-parameters-9'">
        <tr><th>Value</th><th>Notify Message Type</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'hip-parameters-11'">
        <tr><th>Value</th><th>Registration Type</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'hip-parameters-13'">
        <tr><th>Value</th><th>Registration Failure Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'nat-traversal'">
        <tr><th>Value</th><th>Identifier</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'via-flags'">
        <tr><th>Position</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'certificate-types'">
        <tr><th>Type Number</th><th>Cert Format</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'transport-modes'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'esp-transform-suite-ids'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'hip-cipher-id'">
        <tr><th>Value</th><th>Cipher ID</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'hi-algorithm'">
        <tr><th>Value</th><th>Algorithm Profile</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ecdsa-curve-label'">
        <tr><th>Value</th><th>Curve</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ecdsa-low-curve-label'">
        <tr><th>Value</th><th>Curve</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'hip-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'hip-parameters-4'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:length"/></td>
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
