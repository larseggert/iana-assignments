<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'variants'">
        <tr>
          <th>Identifier</th>
          <th>Name</th>
          <th>Description</th>
          <th>Additional Parameters</th>
          <th>Fragment Identifiers</th>
          <th>References</th>
          <th>Contact Information</th>
          <th>Expiration Date</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'variants'">
        <tr>
          <td><xsl:apply-templates select="iana:identifier"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:additional"/></td>
          <td><xsl:apply-templates select="iana:fragment"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:expiration"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
