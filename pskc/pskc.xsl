<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'alg-profiles'">
        <tr><th>Common Name</th>
          <th>Class</th>
          <th>URI</th>
          <th>Identifier Definition</th>
          <th>Algorithm Definition</th>
          <th>Registrant Contact</th>
          <th>Deprecated</th>
          <th>PSKC Profiling</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'versions'">
        <tr><th>PSKC Version</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'key-usage'">
        <tr><th>Key Usage</th><th>Specification</th><th>Deprecated</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'alg-profiles'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:class"/></td>
          <td><xsl:value-of select="iana:uri"/></td>
          <td><xsl:apply-templates select="iana:id"/></td>
          <td><xsl:apply-templates select="iana:algorithm"/></td>
          <td><xsl:value-of select="iana:registrant"/></td>
          <td><xsl:value-of select="iana:deprecated"/></td>
          <td><xsl:apply-templates select="iana:profiling"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'versions'">
        <tr>
          <td><xsl:value-of select="iana:version"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'key-usage'">
        <tr>
          <td><xsl:value-of select="iana:key"/></td>
          <td><xsl:value-of select="iana:spec"/></td>
          <td><xsl:value-of select="iana:deprecated"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
