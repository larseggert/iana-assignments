<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'jscalendar-properties'">
        <tr>
        <th>Property Name</th>
        <th>Property Type</th>
        <th>Property Context</th>
        <th>Reference/Description</th>
        <th>Intended Usage</th>
        <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'jscalendar-types'">
        <tr>
        <th>Type Name</th>
        <th>Reference/Description</th>
        <th>Intended Usage</th>
        <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'jscalendar-enum-values'">
        <tr>
        <th>Property Name</th>
        <th>Context</th>
        <th>Reference</th>
        <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
        <th>Enum Value</th>
        <th>Reference/Description</th>
        <th>Change Controller</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'jscalendar-properties'">
        <tr>
        <td><xsl:value-of select="iana:type"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:context"/></td>
        <td><xsl:apply-templates select="iana:refs"/></td>
        <td><xsl:apply-templates select="iana:use"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'jscalendar-types'">
        <tr>
        <td><xsl:apply-templates select="iana:type"/></td>
        <td><xsl:apply-templates select="iana:refs"/></td>
        <td><xsl:apply-templates select="iana:use"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'jscalendar-enum-values'">
        <tr>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:context"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
        <td><xsl:apply-templates select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:refs"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
