<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'mls-ciphersuites'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Recommended</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mls-wire-formats'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Recommended</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mls-extension-types'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Message(s)</th>
          <th>Recommended</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mls-proposal-types'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Recommended</th>
          <th>Ext</th>
          <th>Path</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mls-credential-types'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Recommended</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Label</th>
          <th>Recommended</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'mls-ciphersuites'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:recommended"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mls-wire-formats'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:recommended"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mls-extension-types'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:messages"/></td>
          <td><xsl:apply-templates select="iana:recommended"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mls-proposal-types'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:recommended"/></td>
          <td><xsl:apply-templates select="iana:ext"/></td>
          <td><xsl:apply-templates select="iana:path"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mls-credential-types'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:recommended"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
      <tr>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:recommended"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
