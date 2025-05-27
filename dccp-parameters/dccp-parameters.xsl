<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'dccp-parameters-1' or @id = 'dccp-parameters-5'">
        <tr><th>Type</th><th>Description/Meaning</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'dccp-parameters-3'">
        <tr><th>Reset Code</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dccp-parameters-7'">
        <tr><th>Number</th><th>Description/Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dccp-parameters-9'">
        <tr><th>CCID</th><th>Description/Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dccp-parameters-10'">
        <tr><th>State</th><th>Description/Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dccp-parameters-11'">
        <tr><th>Drop Code</th><th>Description/Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'mp-dccp-versions'">
        <tr><th>Version</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'multipath-options'">
        <tr><th>Multipath Option</th><th>Name</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'multipath-key-type'">
        <tr><th>Type</th><th>Name</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'dccp-parameters-1' or ../@id = 'dccp-parameters-3' or ../@id = 'dccp-parameters-5' or ../@id = 'dccp-parameters-7' or ../@id = 'dccp-parameters-9' or ../@id = 'dccp-parameters-10' or ../@id = 'dccp-parameters-11' or ../@id = 'mp-dccp-versions'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'multipath-options'">
      <tr>
        <td><xsl:apply-templates select="iana:opt"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
    </xsl:when>
    <xsl:when test="../@id = 'multipath-key-type'">
      <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
    </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="iana:registryempty">
  </xsl:template>

</xsl:stylesheet>
