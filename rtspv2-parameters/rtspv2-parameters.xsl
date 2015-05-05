<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'feature-tags'">
        <tr><th>Name</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'methods'">
        <tr><th>Method</th><th>Directionality</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'status-codes'">
        <tr><th>Status Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'headers'">
        <tr><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'accept-credentials-hash'">
        <tr><th>Hash Alg. ID</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'cache-control-directive'">
        <tr><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'media-properties'">
        <tr><th>Property Group</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'range-header'">
        <tr><th>Identifier</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'redirect-reasons'">
        <tr><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'terminate-reason-params'">
        <tr><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rtp-info'">
        <tr><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'transport-protocol-id'">
        <tr><th>ID String</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'transport-modes'">
        <tr><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'transport-params'">
        <tr><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Name</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'feature-tags'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'status-codes'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'headers'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'accept-credentials-hash'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'cache-control-directive'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'media-properties'">
        <tr>
          <td><xsl:value-of select="iana:group"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'redirect-reasons'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'terminate-reason-params'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rtp-info'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'transport-protocol-id'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'transport-modes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'transport-params'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
