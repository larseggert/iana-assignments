<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'c509-certificate-types'">
        <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-certification-request-types'">
        <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-private-key-types'">
        <tr>
        <th>Value</th>
        <th>Comments</th>
        <th>subjectPrivateKey</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-certification-request-templates-types'">
        <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-rdn-attributes'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Identifiers</th>
        <th>OID</th>
        <th>DER</th>
        <th>Comments</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-cr-attributes'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Identifiers</th>
        <th>OID</th>
        <th>DER</th>
        <th>Comments</th>
        <th>attributeValue</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-extensions'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Identifiers</th>
        <th>OID</th>
        <th>DER</th>
        <th>Comments</th>
        <th>extensionValue</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-certificate-policies'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Identifiers</th>
        <th>OID</th>
        <th>DER</th>
        <th>Comments</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-policies-qualifiers'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Identifiers</th>
        <th>OID</th>
        <th>DER</th>
        <th>Comments</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-information-access'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Identifiers</th>
        <th>OID</th>
        <th>DER</th>
        <th>Comments</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-extended-key-usages'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Identifiers</th>
        <th>OID</th>
        <th>DER</th>
        <th>Comments</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-general-names'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Comments</th>
        <th>GeneralNameValue</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-signature-algorithms'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Identifiers</th>
        <th>OID</th>
        <th>Parameters</th>
        <th>DER</th>
        <th>Comments</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'c509-public-key-algorithms'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Identifiers</th>
        <th>OID</th>
        <th>Parameters</th>
        <th>DER</th>
        <th>Comments</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'c509-certificate-types'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-private-key-types'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:privatekey"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-rdn-attributes'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:der"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-cr-attributes'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:der"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:attr"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-extensions'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:der"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:ext"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-certificate-policies'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:der"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-policies-qualifiers'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:der"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-information-access'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:der"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-extended-key-usages'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:der"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-general-names'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:genname"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-signature-algorithms'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:parameters"/></td>
        <td><xsl:apply-templates select="iana:der"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'c509-public-key-algorithms'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:parameters"/></td>
        <td><xsl:apply-templates select="iana:der"/></td>
        <td><xsl:apply-templates select="iana:comments"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
