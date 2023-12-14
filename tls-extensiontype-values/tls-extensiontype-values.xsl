<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:import href="../_support/iana-registry.xsl"/>
  
  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'tls-extensiontype-values-1'">
        <tr>
          <th>Value</th>
          <th>Extension Name</th>
          <th>TLS 1.3</th>
          <th>DTLS-Only</th>
          <th>Recommended</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'tls-extensiontype-values-3'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Recommended</th>
          <th>Reference</th>
          <th>Comment</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'certificate-status'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Comment</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'alpn-protocol-ids'">
        <tr>
          <th>Protocol</th>
          <th>Identification Sequence</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'tls-certificate-compression-algorithm-ids'">
        <tr>
          <th>Algorithm Number</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'tls-extensiontype-values-1'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:tls13"/></td>
          <td><xsl:value-of select="iana:dtls-only"/></td>
          <td><xsl:value-of select="iana:rec"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tls-extensiontype-values-3'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:rec"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:comment"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'certificate-status'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:comment"/></td>
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
