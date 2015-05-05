<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'web-signature-encryption-header-parameters'">
        <tr><th>Header Parameter Name</th>
          <th>Header Parameter Description</th>
          <th>Header Parameter Usage Location(s)</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'web-signature-encryption-algorithms'">
          <tr>
          <th>Algorithm Name</th>
          <th>Algorithm Description</th>
          <th>Algorithm Usage Location(s)</th>
          <th>JOSE Implementation Requirements</th>
          <th>Change Controller</th>
          <th>Reference</th>
          <th>Algorithm Analysis Document(s)</th>
          </tr>
      </xsl:when>
      <xsl:when test="@id = 'web-encryption-compression-algorithms'">
        <tr><th>Compression Algorithm Value</th>
          <th>Compression Algorithm Description</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'web-key-types'">
        <tr><th>"kty" Parameter Value</th>
          <th>Key Type Description</th>
          <th>JOSE Implementation Requirements</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'web-key-elliptic-curve'">
        <tr><th>Curve Name</th>
          <th>Curve Description</th>
          <th>JOSE Implementation Requirements</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'web-key-parameters'">
        <tr><th>Parameter Name</th>
          <th>Parameter Description</th>
          <th>Used with "kty" Value(s)</th>
          <th>Parameter Information Class</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'web-key-use'">
        <tr><th>Use Member Value</th>
          <th>Use Description</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'web-key-operations'">
        <tr><th>Key Operation Value</th>
          <th>Key Operation Description</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'web-key-set-parameters'">
        <tr><th>Parameter Name</th>
          <th>Parameter Description</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'web-signature-encryption-header-parameters'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:usage"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'web-signature-encryption-algorithms'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:usage"/></td>
          <td><xsl:value-of select="iana:requirements"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:analysis"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'web-key-types'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>          
          <td><xsl:value-of select="iana:requirements"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'web-key-elliptic-curve'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>          
          <td><xsl:value-of select="iana:requirements"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'web-key-parameters'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>          
          <td><xsl:value-of select="iana:usage"/></td>
          <td><xsl:value-of select="iana:class"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
