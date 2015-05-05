<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'ip-parameters-1'">
        <tr>
          <th>Copy</th>
          <th>Class</th>
          <th>Number</th>
          <th>Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ip-parameters-3'">
        <tr>
          <th>TOS Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ip-parameters-4'">
        <tr>
          <th>Protocol</th>
          <th>TOS Value</th>
          <th>Description</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ip-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:copy"/></td>
          <td align="center"><xsl:value-of select="iana:class"/></td>
          <td align="center"><xsl:value-of select="iana:number"/></td>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><pre><xsl:apply-templates select="iana:description"/></pre></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ip-parameters-3'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ip-parameters-4'">
        <tr>
          <td><xsl:apply-templates select="iana:protocol"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:note"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="iana:registryempty">
  </xsl:template>

</xsl:stylesheet>
