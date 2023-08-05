<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'cost-modes'">
        <tr>
          <th>Identifier</th>
          <th>Description</th>
          <th>Intended Semantics</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'cost-metrics'">
        <tr><th>Identifier</th><th>Intended Semantics</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'cost-source-types'">
        <tr><th>Identifier</th><th>Intended Semantics</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'endpoint-property-types'">
        <tr><th>Identifier</th><th>Intended Semantics</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'address-types'">
        <tr>
          <th>Identifier</th>
          <th>Address Encoding</th>
          <th>Prefix Encoding</th>
          <th>Mapping to/from IPv4/v6</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'alto-entity-domain-type'">
        <tr>
          <th>Identifier</th>
          <th>Entity Identifier Encoding</th>
          <th>Hierarchy and Inheritance</th>
          <th>Media Type of Defining Resource</th>
          <th>Mapping to ALTO Address Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'alto-entity-property-type'">
        <tr>
          <th>Identifier</th>
          <th>Intended Semantics</th>
          <th>Media Type of Defining Resource</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'error-codes'">
        <tr><th>Error Code</th><th>Intended Usage</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'cost-modes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:semantics"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'cost-metrics'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'address-types'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:address"/></td>
          <td><xsl:apply-templates select="iana:prefix"/></td>
          <td><xsl:apply-templates select="iana:mapping"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'alto-entity-domain-type'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:entity"/></td>
          <td><xsl:apply-templates select="iana:hier-inher"/></td>
          <td><xsl:apply-templates select="iana:mediatype"/></td>
          <td><xsl:apply-templates select="iana:mapping"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'alto-entity-property-type'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:semantics"/></td>
          <td><xsl:apply-templates select="iana:mediatype"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>      
  </xsl:template>

</xsl:stylesheet>
