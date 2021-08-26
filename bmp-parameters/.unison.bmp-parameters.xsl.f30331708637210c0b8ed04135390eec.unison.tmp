<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'message-types'">
        <tr>
          <th>Type</th>
          <th>Description</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'peer-types'">
        <tr>
          <th>Peer Type</th>
          <th>Description</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'peer-flags'">
        <tr>
          <th>Flag</th>
          <th>Description</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'statistics-types'">
        <tr>
          <th>Stat Type</th>
          <th>Description</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'peer-flags-loc-rib'">
        <tr>
          <th>Flag</th>
          <th>Description</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Type</th>
          <th>Description</th>
          <th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
    <xsl:when test="../@id = 'message-types'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:apply-templates select="iana:description"/></td>
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
