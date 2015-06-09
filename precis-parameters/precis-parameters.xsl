<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
  <xsl:choose>
    <xsl:when test="@id = 'base-classes'"> 
    <tr>
      <td>Base Class</td>
      <td>Description</td>
      <td>Reference</td>
    </tr>
    </xsl:when>
    <xsl:when test="@id = 'profiles'"> 
    <tr>
      <td>Name</td>
      <td>Base Class</td>
      <td>Replaces</td>
      <td>Template</td>
      <td>Reference</td>
    </tr>
    </xsl:when>
  </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
    <xsl:when test="../@id = 'base-classes'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:apply-templates select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
    </xsl:when>
    <xsl:when test="../@id = 'profiles'">
    <tr>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:value-of select="iana:class"/></td>
      <td><xsl:value-of select="iana:replaces"/></td>
      <td><xsl:apply-templates select="iana:file"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
    </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
