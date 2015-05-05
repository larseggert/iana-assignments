<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
      
      <xsl:when test="@id = 'rsvp-parameters-2'">
        <tr>
          <th>Value</th>
          <th>Message Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'rsvp-parameters-4'">
        <tr>
          <th>Class Number</th>
          <th>Class Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="number(substring-after(@id, 'rsvp-parameters-')) &gt;= 5 and number(substring-after(@id, 'rsvp-parameters-')) &lt;= 95 or number(substring-after(@id, 'rsvp-parameters-')) &gt;= 100 and number(substring-after(@id, 'rsvp-parameters-')) &lt;= 115">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'rsvp-parameters-97'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rsvp-parameters-99'">
        <tr>
          <th>Error Code</th>
          <th>Meaning</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rsvp-parameters-117'">
        <tr>
          <th>Bit Number</th>
          <th>Hex Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rsvp-parameters-118'">
        <tr>
          <th>TLV Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rsvp-parameters-119'">
        <tr>
          <th>Bit Number</th>
          <th>32-Bit Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'vcat-elementary-signal'">
        <tr>
          <th>Value</th>
          <th>Type (Elementary Signal)</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'vcat-vgc-operation'">
        <tr>
          <th>Value</th>
          <th>Meaning</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
    <xsl:choose>
      
      
      <xsl:when test="../@id = 'rsvp-parameters-117' or ../@id = 'rsvp-parameters-119'">
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td align="center"><xsl:value-of select="iana:hex"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:otherwise>
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:otherwise>
    </xsl:choose>
    </tr>
  </xsl:template>
</xsl:stylesheet>
