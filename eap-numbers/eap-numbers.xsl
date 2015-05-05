<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'eap-numbers-2'">
        <tr><th>Type</th><th>Description</th><th>Payload Type</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'eap-numbers-10'">
        <tr><th>Name</th><th>Request</th><th>Response</th><th>MI</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-initiate-re-auth-start-flags'">
        <tr><th>Flag</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-initiate-re-auth-flags'">
        <tr><th>Flag</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-finish-re-auth-flags'">
        <tr><th>Flag</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-lower-layers'">
        <tr><th>Value</th><th>Lower Layer</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'eap-numbers-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:payload_type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'eap-numbers-10'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:request"/></td>
          <td><xsl:value-of select="iana:response"/></td>
          <td><xsl:value-of select="iana:MI"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-initiate-re-auth-start-flags'">
        <tr>
          <td><xsl:value-of select="iana:flag"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-initiate-re-auth-flags'">
        <tr>
          <td><xsl:value-of select="iana:flag"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-finish-re-auth-flags'">
        <tr>
          <td><xsl:value-of select="iana:flag"/></td>
          <td><xsl:value-of select="iana:value"/></td>
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
