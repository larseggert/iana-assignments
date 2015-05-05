<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'access'">
        <tr>
          <th>Type</th>
          <th>Application</th>
          <th>Description</th>
          <th>RFC Number</th>
          <th>Contact</th>
        </tr>
      </xsl:when>

    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'access'">
        <tr>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:application"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:publications"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
        </tr>
      </xsl:when>

    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
