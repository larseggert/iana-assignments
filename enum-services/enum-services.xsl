<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Class</th>
      <th>Type</th>
      <th>Subtype</th>
      <th>URI Scheme(s)</th>
      <th>Functional Specification</th>
      <th>Security Considerations</th>
      <th>Intended Usage</th>
      <th>Enumservice Specification(s)</th>
      <th>Requester(s)</th>
      <th>Further Information</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:class"/></td>
      <td><xsl:value-of select="iana:type"/></td>
      <td>
        <xsl:choose>
          <xsl:when test="iana:subtype">
            <xsl:value-of select="iana:subtype"/>
          </xsl:when>
          <xsl:otherwise>N/A</xsl:otherwise>
        </xsl:choose>
      </td>
      <td><xsl:value-of select="iana:urischeme"/></td>
      <td><xsl:apply-templates select="iana:functionalspec"/></td>
      <td><xsl:apply-templates select="iana:security"/></td>
      <td><xsl:value-of select="iana:usage"/></td>
      <td><xsl:apply-templates select="iana:registrationdocs"/></td>
      <td><xsl:apply-templates select="iana:requesters"/></td>
      <td><xsl:apply-templates select="iana:additionalinfo"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
