<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'token-types'">
        <tr>
          <th>Name</th>
          <th>Additional Endpoint Response Parameters</th>
          <th>HTTP Authentication Scheme(s)</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'endpoint'">
        <tr>
          <th>Name</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'extensions-error'">
        <tr>
          <th>Name</th>
          <th>Usage Location</th>
          <th>Protocol Extension</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'parameters'">
        <tr>
          <th>Name</th>
          <th>Parameter Usage Location</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>      
      <xsl:when test="@id = 'token-type-hint'">
        <tr>
          <th>Hint Value</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'uri'">
        <tr>
          <th>URN</th>
          <th>Common Name</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'client-metadata'">
        <tr>
          <th>Client Metadata Name</th>
          <th>Client Metadata Description</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'token-endpoint-auth-method'">
        <tr>
          <th>Token Endpoint Authorization Method Name</th>
          <th>Change Controller</th>
          <th>Reference</th></tr>
      </xsl:when>
      
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      
      <xsl:when test="../@id = 'token-types'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:additional"/></td>
          <td><xsl:value-of select="iana:http"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      

      
      <xsl:when test="../@id = 'endpoint'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'extensions-error'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:usage"/></td>
          <td><xsl:value-of select="iana:protocol"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'parameters'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:usage"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'token-type-hint'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'uri'">
        <tr>
          <td><xsl:value-of select="iana:urn"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'client-metadata'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'token-endpoint-auth-method'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
