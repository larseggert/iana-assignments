<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
    <xsl:when test="@id = 'provider-id-series'">
      <tr>
        <th>Name</th>
        <th>Source</th>
        <th>URL</th>
        <th>Reference</th>
      </tr>
    </xsl:when>
    <xsl:when test="@id = 'device-service-data-type'">
      <tr>
        <th>Name</th>
        <th>Source</th>
        <th>Specification</th>
        <th>Reference</th>
      </tr>
    </xsl:when>
    <xsl:when test="@id = 'emergency-call-data-types'">
      <tr>
        <th>Token</th>
        <th>Data About</th>
        <th>Reference</th>
      </tr>
    </xsl:when>
    <xsl:otherwise>
      <tr>
        <th>Token</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
    <xsl:when test="../@id = 'provider-id-series'">
     <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:source"/></td>      
       <td><xsl:apply-templates select="iana:url"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
     </tr>
    </xsl:when>
      <xsl:when test="../@id = 'device-service-data-type'">
     <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>      
       <td><xsl:apply-templates select="iana:url"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
     </tr>
    </xsl:when>
      <xsl:otherwise>
     <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
     </tr>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>