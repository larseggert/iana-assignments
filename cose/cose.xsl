<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'header-parameters'">
        <tr>
          <th>Name</th>
          <th>Label</th>
          <th>Value Type</th>
          <th>Value Registry</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'header-algorithm-parameters'">
        <tr>
          <th>Name</th>
          <th>Algorithm</th>
          <th>Label</th>
          <th>Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'algorithms'">
        <tr>
          <th>Name</th>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Recommended</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'key-common-parameters'">
        <tr>
          <th>Name</th>
          <th>Label</th>
          <th>CBOR Type</th>
          <th>Value Registry</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'key-type-parameters'">
        <tr>
          <th>Key Type</th>
          <th>Name</th>
          <th>Label</th>
          <th>CBOR Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'key-type'">
        <tr>
          <th>Name</th>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'elliptic-curve'">
        <tr>
          <th>Name</th>
          <th>Value</th>
          <th>Key Type</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Recommended</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'header-parameters'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:label"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:reg"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'header-algorithm-parameters'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:algorithm"/></td>
          <td><xsl:value-of select="iana:label"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'algorithms'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:recommended"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'key-common-parameters'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:label"/></td>
          <td><xsl:value-of select="iana:cbor-type"/></td>
          <td><xsl:apply-templates select="iana:reg"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'key-type-parameters'">
        <tr>
          <td><xsl:value-of select="iana:keytype"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:label"/></td>
          <td><xsl:value-of select="iana:cbor-type"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'key-type'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'elliptic-curve'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:keytype"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:recommended"/></td>
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
