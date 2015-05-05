<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'tag'">
        <tr><th>Tag Name</th>   
          <th>Reference</th>
          <th>Status</th>
          <th>Description</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'report-format'">
        <tr><th>Format Name</th>
          <th>Reference</th>
          <th>Status</th>
          <th>Description</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'tag'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td> 
          <td><xsl:apply-templates select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>                 
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'report-format'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td> 
          <td><xsl:apply-templates select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
