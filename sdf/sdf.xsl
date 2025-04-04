<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'sdf-quality-names'">
        <tr>
          <th>Name</th>
          <th>Brief Description</th>
          <th>Reference</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'sdf-quality-name-prefixes'">
        <tr>
          <th>Prefix</th>
          <th>Contact</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'sdftype-values'">
        <tr>
          <th>Name</th>
          <th>Description</th>
          <th>type</th>
          <th>JSON Representation</th>
          <th>Reference</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'sdf-feature-names'">
        <tr>
          <th>Name</th>
          <th>Brief Description</th>
          <th>Reference</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
      
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'sdf-quality-names'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>

      <xsl:when test="../@id = 'sdf-quality-name-prefixes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>

      <xsl:when test="../@id = 'sdftype-values'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:json"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:otherwise>

    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
