<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'ace-authorization-server-request-creation-hints'">
        <tr>
          <th>Name</th>
          <th>CBOR Key</th>
          <th>Value Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when> 
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
      <xsl:when test="@id = 'ace-groupcomm-parameters'">
        <tr>
          <th>Name</th>
          <th>CBOR Key</th>
          <th>CBOR Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ace-groupcomm-key-types'">
        <tr>
          <th>Name</th>
          <th>Key Type Value</th>
          <th>Profile</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ace-groupcomm-profiles'">
        <tr>
          <th>Name</th>
          <th>Description</th>
          <th>CBOR Value</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ace-groupcomm-policies'">
        <tr>
          <th>Name</th>
          <th>CBOR Label</th>
          <th>CBOR Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'sequence-number-synchronization-methods'">
        <tr>
          <th>Name</th>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ace-groupcomm-errors'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ace-groupcomm-rekeying-schemes'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ace-groupcomm-rekeying-schemes'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ace-token-revocation-list-parameters'">
        <tr>
          <th>Name</th>
          <th>CBOR Key</th>
          <th>CBOR Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ace-token-revocation-list-parameters'">
        <tr>
          <th>Name</th>
          <th>CBOR Key</th>
          <th>CBOR Type</th>
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
      <xsl:when test="../@id = 'ace-authorization-server-request-creation-hints'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
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
      <xsl:when test="../@id = 'oscore-security-context-parameters'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:key"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ace-groupcomm-parameters'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:key"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ace-groupcomm-key-types'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:key"/></td>
          <td><xsl:apply-templates select="iana:profile"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ace-groupcomm-profiles'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:cbor"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ace-groupcomm-policies'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:label"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ace-groupcomm-policies'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'sequence-number-synchronization-methods'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ace-groupcomm-errors'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ace-groupcomm-rekeying-schemes'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ace-token-revocation-list-parameters'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:key"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
