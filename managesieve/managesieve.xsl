<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'capability'">
        <tr>
          <th>Capability name</th>
          <th>Description</th>
          <th>Relevant publications</th>
          <th>Person and email address to contact for further information</th>
          <th>Author/Change controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'response'">
        <tr>
          <th>Response code</th>
          <th>Arguments (use ABNF to specify syntax, or the word NONE if none can be specified)</th>
          <th>Purpose</th>
          <th>Published specification(s)</th>
          <th>Person and email address to contact for further information</th>
          <th>Author/Change controller</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'capability'">
        <tr>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:publications"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'response'">
        <tr>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:purpose"/></td>
          <td><xsl:apply-templates select="iana:publications"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
