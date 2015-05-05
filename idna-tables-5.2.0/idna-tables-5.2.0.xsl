<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'idna-tables-5.2.0-properties'">
        <tr><th>Codepoint</th><th>Property</th><th>Description</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'idna-tables-5.2.0-context'">
       <tr>
        <th>Code Point</th>
        <th>Lookup</th>
        <th>Rule Set</th>
        <th>Overview</th>
        <th>Description</th>
       </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'idna-tables-5.2.0-properties'">
        <tr>
          <td align="right"><xsl:value-of select="iana:codepoint"/></td>
          <td><xsl:value-of select="iana:property"/></td>
          <td><xsl:value-of select="iana:description"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'idna-tables-5.2.0-context'">
       <tr>
        <td align="right"><xsl:value-of select="iana:codepoint"/></td>
        <td align="center"><xsl:value-of select="iana:lookup"/></td>
        <td><pre><xsl:value-of select="iana:ruleset"/></pre></td>
        <td><xsl:value-of select="iana:overview"/></td>
        <td><xsl:value-of select="iana:description"/></td>
       </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
