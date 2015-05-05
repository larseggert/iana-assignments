<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'properties'">
        <tr><th>Namespace</th><th>Property</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'parameters'">
        <tr><th>Namespace</th><th>Parameter</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'value-data-types'">
        <tr><th>Value Data Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'property-values'">
        <tr><th>Property</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'parameter-values'">
        <tr><th>Property</th><th>Parameter</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'properties'">
        <tr>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:references"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'parameters'">
        <tr>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:references"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'value-data-types'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:references"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'property-values'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:references"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'parameter-values'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:references"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
