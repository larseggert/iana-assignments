<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'aaa-parameters-1'">
        <tr><th>AVP Code</th><th>Attribute Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'aaa-parameters-2'">
      </xsl:when>
      <xsl:when test="@id = 'aaa-parameters-44'">
        <tr><th>Bit</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'aaa-parameters-46'">
        <tr><th>ID Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'aaa-parameters-47'">
        <tr><th>Code Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'aaa-parameters-48'">
        <tr><th>bit</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'aaa-parameters-49'">
        <tr><th>Value</th><th>Token</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'mip6-authentication-mode'">
        <tr><th>Value</th><th>Token</th><th>Reference</th></tr>
      </xsl:when>
      
      
      <xsl:when test="@id = 'qos-profile'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>AVP Value</th><th>Attribute Name</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'aaa-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'aaa-parameters-44'">
        <tr>
          <td align="center"><xsl:value-of select="iana:bit"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'aaa-parameters-46'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'aaa-parameters-47'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'aaa-parameters-48'">
        <tr>
          <td align="center"><xsl:value-of select="iana:bit"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
