<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'pgp-parameters-1'">
        <tr><th>ID</th><th>S2K Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pgp-parameters-2'
                   or @id = 'pgp-parameters-3'
                   or @id = 'pgp-parameters-4'
                   or @id = 'pgp-parameters-5'">
        <tr><th>Value</th><th>Attribute</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pgp-parameters-6'">
        <tr><th>Allowed values</th><th>Name</th><th>Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pgp-parameters-7'">
        <tr><th>First octet</th><th>Extension</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pgp-parameters-8'">
        <tr><th>Value</th><th>Flag</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pgp-parameters-9'">
        <tr><th>First octet</th><th>Feature</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pgp-parameters-10'">
        <tr><th>Name</th><th>Type</th><th>Allowed Values</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pgp-parameters-11'">
        <tr><th>First octet</th><th>Extension</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pgp-parameters-12'
                   or @id = 'pgp-parameters-13'
                   or @id = 'pgp-parameters-15'">
        <tr><th>ID</th><th>Algorithm</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pgp-parameters-14'">
        <tr><th>ID</th><th>Algorithm</th><th>Text Name</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'pgp-parameters-1'
                   or ../@id = 'pgp-parameters-2'
                   or ../@id = 'pgp-parameters-3'
                   or ../@id = 'pgp-parameters-4'
                   or ../@id = 'pgp-parameters-5'
                   or ../@id = 'pgp-parameters-7'
                   or ../@id = 'pgp-parameters-8'
                   or ../@id = 'pgp-parameters-9'
                   or ../@id = 'pgp-parameters-11'
                   or ../@id = 'pgp-parameters-12'
                   or ../@id = 'pgp-parameters-13'
                   or ../@id = 'pgp-parameters-15'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'pgp-parameters-6'
                   or ../@id = 'pgp-parameters-10'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'pgp-parameters-14'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
