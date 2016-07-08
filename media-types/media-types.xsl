<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:registryempty">
    <table>
      <tr>
        <td colspan="0">
          <i>No registrations at this time.</i>
        </td>
      </tr>
    </table>
  </xsl:template>

  <xsl:template name="iana:record_header">
    <tr>
      <th>Name</th>
      <th>Template</th>
      <xsl:if test="iana:record/iana:description"><th>Description</th></xsl:if>
      <th>Reference</th>
    </tr>
  </xsl:template>
  <xsl:template match="iana:record">
    <tr>
      <td>
        <xsl:apply-templates select="iana:name"/>
        <xsl:apply-templates select="iana:deprecated"/>
        <xsl:apply-templates select="iana:obsolete"/>
      </td>
      <td><xsl:apply-templates select="iana:file"/></td>
      <xsl:if test="../iana:record/iana:description">
        <td><xsl:apply-templates select="iana:description"/></td>
      </xsl:if>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>


  <xsl:template match="iana:deprecated">
    <xsl:text> - DEPRECATED - Please see: </xsl:text><xsl:value-of select="."/>
  </xsl:template>
  <xsl:template match="iana:obsolete">
    <xsl:text> - OBSOLETE</xsl:text>
  </xsl:template>
</xsl:stylesheet>
