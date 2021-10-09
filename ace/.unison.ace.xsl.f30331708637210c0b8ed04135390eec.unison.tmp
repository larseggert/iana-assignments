<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'oauth-error-code-cbor-mappings'">
        <tr>
          <th>Name</th>
          <th>CBOR Value</th>
          <th>Reference</th>
          <th>Original Specification</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'oauth-grant-type-cbor-mappings'">
        <tr>
          <th>Name</th>
          <th>CBOR Value</th>
          <th>Reference</th>
          <th>Original Specification</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'oauth-access-token-type-cbor-mappings'">
        <tr>
          <th>Name</th>
          <th>CBOR Value</th>
          <th>Reference</th>
          <th>Original Specification</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'oauth-parameters-cbor-mappings'">
        <tr>
          <th>Name</th>
          <th>CBOR Key</th>
          <th>Value Type</th>
          <th>Reference</th>
          <th>Original Specification</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'oauth-token-instrospection-response-cbor-mappings'">
        <tr>
          <th>Name</th>
          <th>CBOR Key</th>
          <th>Value Type</th>
          <th>Reference</th>
          <th>Original Specification</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ace-profiles'">
        <tr>
          <th>Name</th>
          <th>Description</th>
          <th>CBOR Value</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'oscore-security-context-parameters'">
        <tr>
          <th>Name</th>
          <th>CBOR Label</th>
          <th>CBOR Type</th>
          <th>Registry</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'oauth-error-code-cbor-mappings'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:original"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'oauth-grant-type-cbor-mappings'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:original"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'oauth-access-token-type-cbor-mappings'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:original"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'oauth-parameters-cbor-mappings'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:original"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'oauth-token-instrospection-response-cbor-mappings'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:original"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ace-profiles'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'oscore-security-context-parameters'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:label"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:reg"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
