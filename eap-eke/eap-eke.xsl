<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'diffie-hellman'">
        <tr><th>Value</th><th>Name</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'encryption-algorithm'">
        <tr><th>Value</th><th>Name</th><th>Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pseudo-random'">
        <tr><th>Value</th><th>Name</th><th>Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'keyed-message'">
        <tr><th>Value</th>
          <th>Name</th>
          <th>Key Length (Octets)</th>
          <th>Definition</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'identity-type'">
        <tr><th>Value</th><th>Name</th><th>Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'failure-code'">
        <tr><th>Value</th><th>Name</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
       <xsl:when test="../@id = 'diffie-hellman'">
        <tr>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'encryption-algorithm'">
        <tr>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'pseudo-random'">
        <tr>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'keyed-message'">
        <tr>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:length"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'identity-type'">
        <tr>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'failure-code'">
        <tr>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="iana:registryempty">
  </xsl:template>

</xsl:stylesheet>
