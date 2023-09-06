<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'edhoc-exporter-labels'">
        <tr>
          <th>Label</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'edhoc-cipher-suites'">
        <tr>
          <th>Value</th>
          <th>Array</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'edhoc-method-types'">
        <tr>
          <th>Value</th>
          <th>Intiator Authentication Key</th>
          <th>Responder Authentication Key</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'edhoc-error-codes'">
        <tr>
          <th>ERR_CODE</th>
          <th>ERR_INFO Type</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'edhoc-ead'">
        <tr>
          <th>Name</th>
          <th>Label</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'edhoc-exporter-labels'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'edhoc-cipher-suites'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:array"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'edhoc-method-types'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:initiator"/></td>
          <td><xsl:value-of select="iana:responder"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'edhoc-error-codes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'edhoc-ead'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
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
