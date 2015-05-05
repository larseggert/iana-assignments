<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
  <xsl:choose>
    <xsl:when test="@id = 'ruleset-id'"> 
    <tr>
      <td>Ruleset Identifier</td>
      <td>Reference</td>
      <td>Template</td>
    </tr>
    </xsl:when>
    <xsl:when test="@id = 'parameters'"> 
    <tr>
      <td>Parameter Name</td>
      <td>Parameter Usage Location</td>
      <td>Specification Document(s)</td>
    </tr>
    </xsl:when>
    <xsl:when test="@id = 'error-codes'"> 
    <tr>
      <td>Code</td>
      <td>Name</td>
      <td>Description and Additional Parameters</td>
      <td>Reference</td>
    </tr>
    </xsl:when>
  </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
    <xsl:when test="../@id = 'ruleset-id'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:apply-templates select="iana:spec"/></td>
      <td><xsl:apply-templates select="iana:template"/></td>
    </tr>
    </xsl:when>
    <xsl:when test="../@id = 'parameters'">
    <tr>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:location"/></td>
      <td><xsl:apply-templates select="iana:spec"/></td>
    </tr>
    </xsl:when>
    <xsl:when test="../@id = 'error-codes'">
    <tr>
      <td><xsl:value-of select="iana:code"/></td>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
    </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
