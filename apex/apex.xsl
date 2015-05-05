<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'apex-1'">
        <tr><th>Endpoints</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'apex-2'">
        <tr><th>Option</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'apex-3'">
        <tr><th>Service</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'apex-1'">
        <tr>
          <td><xsl:value-of select="iana:endpoints"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'apex-2'">
        <tr>
          <td><xsl:value-of select="iana:option"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'apex-3'">
        <tr>
          <td><xsl:value-of select="iana:service"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
