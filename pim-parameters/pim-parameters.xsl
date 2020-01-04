<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
 
    <xsl:choose> 
      <xsl:when test="@id = 'pim-parameters-1'">
      <tr><th>Value</th><th>Length</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pim-parameters-2'">
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pim-parameters-3'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pim-parameters-4'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'message-types'">
        <tr><th>Type</th><th>Name</th><th>Flag Bits</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'port-message-types'">
        <tr><th>Type</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'port-option-types'">
        <tr><th>Type</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'flooding-mechanism-message-types'">
        <tr><th>Type</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'pim-designated-router-load-balancing-hash-algorithms'">
        <tr><th>Type</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'pim-parameters-1'">
    <tr>
      <td align="center"><xsl:value-of select="iana:value"/></td>
      <td align="center"><xsl:value-of select="iana:length"/></td>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
      </xsl:when>
      <xsl:when test="../@id = 'pim-parameters-2'">
    <tr>
      <td align="center"><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>   
      </xsl:when>
      <xsl:when test="../@id = 'pim-parameters-3'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>   
      </xsl:when>
      <xsl:when test="../@id = 'pim-parameters-4'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>   
      </xsl:when>
      <xsl:when test="../@id = 'message-types'">
          <tr>
            <xsl:choose>
              <xsl:when test="string(preceding-sibling::iana:record[1]/iana:value) = string(iana:value)">
                <td/>
                <td/>
                <td><xsl:value-of select="iana:flag-value"/><xsl:if test="normalize-space(iana:flag-description)">: <xsl:value-of select="iana:flag-description"/></xsl:if></td>
                <td><xsl:apply-templates select="iana:xref"/></td>
              </xsl:when>
              <xsl:otherwise>
                <td align="center"><xsl:value-of select="iana:value"/></td>
                <td><xsl:value-of select="iana:name"/></td>
                <td><xsl:value-of select="iana:flag-value"/><xsl:if test="normalize-space(iana:flag-description)">: <xsl:value-of select="iana:flag-description"/></xsl:if></td>
                <td><xsl:apply-templates select="iana:xref"/></td>
              </xsl:otherwise>
            </xsl:choose>
          </tr>
      </xsl:when>
      <xsl:when test="../@id = 'port-message-types'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>   
      </xsl:when>
      <xsl:when test="../@id = 'port-option-types'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
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
  
</xsl:stylesheet>
