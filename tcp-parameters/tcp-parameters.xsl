<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'tcp-parameters-1'">
        <tr><th>Kind</th><th>Length</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-parameters-2'">
        <tr><th>Number</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-parameters-3'">
        <tr><th>Algorithm</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'mptcp-option-subtypes'">
        <tr><th>Value</th><th>Symbol</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'mptcp-handshake'">
        <tr><th>Flag Bit</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'tcp-exids'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-encryption'">
        <tr><th>Value</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcpcrypt-aead-algorithms'">
        <tr><th>Value</th><th>AEAD Algorithm</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'mptcp-mp-tcprst-reason-codes'">
        <tr><th>Code</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-header-flags'">
        <tr>
          <th>Bit Offset</th>
          <th>Name</th>
          <th>Reference</th>
          <th>Assignment Notes</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'tcp-parameters-1'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:length"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-parameters-2'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-parameters-3'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mptcp-option-subtypes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:symbol"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:spec"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mptcp-handshake'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:spec"/></td>
        </tr>
      </xsl:when>      
      <xsl:when test="../@id = 'tcp-exids'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-encryption'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcpcrypt-aead-algorithms'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mptcp-mp-tcprst-reason-codes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-header-flags'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:note"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
