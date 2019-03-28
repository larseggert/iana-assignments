<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'jmap-capabilities'">
        <tr>
          <th>Capability Name</th>
          <th>Intended Use</th>
          <th>Change Controller</th>
          <th>Security and Privacy Considerations</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'jmap-error-codes'">
        <tr>
          <th>JMAP Error Code</th>
          <th>Intended Use</th>
          <th>Change Controller</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'jmap-capabilities'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:use"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:security"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'jmap-error-codes'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:use"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
