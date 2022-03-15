<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'mail-parameters-2'">
        <tr>
          <th>EHLO Keyword</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Note</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mail-parameters-3'">
        <tr>
          <th>EHLO Keyword</th>
          <th>Parameters</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mail-parameters-6'">
        <tr>
          <th>VIA link types</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mail-parameters-7'">
        <tr>
          <th>WITH protocol types</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mail-parameters-8'">
        <tr>
          <th>Clause Name</th>
          <th>Description</th>
          <th>Syntax Summary</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mail-parameters-9'">
        <tr>
          <th>Policy Name</th>
          <th>Comment</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mail-parameters-10'">
        <tr>
          <th>Name</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Use</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'multicast-email-smtp-extensions'">
        <tr>
          <th>Name</th>
          <th>Status</th>
          <th>Multicast-Mail-Specific References</th>
          <th>Non-Multicast-Specific References</th>
          <th>Note</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'mail-parameters-3' or
                      ../@id = 'mail-parameters-6' or
                      ../@id = 'mail-parameters-7' or
                      ../@id = 'mail-parameters-9'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mail-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:note"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mail-parameters-8'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:syntax"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mail-parameters-10'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:use"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'multicast-email-smtp-extensions'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:multicast-ref"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:note"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
