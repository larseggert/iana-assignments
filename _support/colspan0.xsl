<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xhtml="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="xml"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"/>

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <!--
  Change colspan=0 to the actual number of columns for noncompliant browsers.
  -->
  <xsl:template match="xhtml:td">
    <xsl:copy>
      <xsl:if test="@colspan">
        <xsl:attribute name="colspan">
          <xsl:choose>
            <xsl:when test="@colspan = 0">
              <xsl:value-of select="count(../../xhtml:tr/xhtml:th)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="@colspan"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="xhtml:td/@colspan"/>

</xsl:stylesheet>
