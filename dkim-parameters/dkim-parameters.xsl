<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'dkim-parameters-1'">
        <tr><th>Type</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dkim-parameters-2'">
        <tr><th>Type</th><th>Option</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dkim-parameters-3'">
        <tr><th>Type</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dkim-parameters-4'">
        <tr><th>Type</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dkim-parameters-5'">
        <tr><th>Type</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dkim-parameters-6'">
        <tr><th>Type</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dkim-parameters-7'">
        <tr><th>Type</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dkim-parameters-8'">
        <tr><th>Type</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dkim-parameters-9'">
        <tr><th>Type</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'atps-tag'">
        <tr><th>Tag</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'reporting-tag'">
        <tr><th>Tag</th><th>Reference</th><th>Status</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'dkim-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dkim-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:option"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dkim-parameters-3'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dkim-parameters-4'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dkim-parameters-5'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dkim-parameters-6'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dkim-parameters-7'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dkim-parameters-8'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dkim-parameters-9'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'atps-tag'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'reporting-tag'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
