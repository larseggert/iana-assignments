<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'signed-objects'">
       <tr><th>Name</th><th>OID</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'name-schemes'">
        <tr><th>Filename Extension</th><th>RPKI Object</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rpki-rtr-pdu'">
        <tr><th>Protocol Version</th><th>PDU Type</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rpki-rtr-error'">
        <tr><th>Error Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rpki-rtr-afi'">
        <tr><th>Bit</th><th>Bit Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'bgpsec-capability'">
        <tr><th>Bits</th><th>Field</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'bgpsec-path-flags'">
        <tr><th>Flag</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'bgpsec-algorithm-suite'">
        <tr>
          <th>Algorithm Suite Identifier</th>
          <th>Digest Algorithm</th>
          <th>Signature Algorithm</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'signed-objects'">
    <tr>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
      </xsl:when>
      <xsl:when test="../@id = 'name-schemes'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rpki-rtr-pdu'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'bgpsec-algorithm-suite'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:digest"/></td>
          <td><xsl:value-of select="iana:signature"/></td>
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
