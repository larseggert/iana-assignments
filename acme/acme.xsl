<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'acme-account-object-fields'">
        <tr>
          <th>Field Name</th>
          <th>Field Type</th>
          <th>Requests</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'acme-order-object-fields'
        or @id ='acme-authorization-object-fields'">
        <tr>
          <th>Field Name</th>
          <th>Field Type</th>
          <th>Configurable</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'acme-error-types'">
        <tr>
          <th>Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'acme-resource-types'">
        <tr>
          <th>Field Name</th>
          <th>Resource Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'acme-directory-metadata-fields'">
        <tr>
          <th>Field Name</th>
          <th>Field Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'acme-identifier-types'">
        <tr>
          <th>Label</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'acme-validation-methods'">
        <tr>
          <th>Label</th>
          <th>Identifier Type</th>
          <th>ACME</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'acme-account-object-fields'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:requests"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'acme-order-object-fields'
        or ../@id ='acme-authorization-object-fields'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:config"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'acme-error-types'">
        <tr>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'acme-resource-types'
        or ../@id = 'acme-directory-metadata-fields'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'acme-identifier-types'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'acme-validation-methods'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:challenge"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
