<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'additional-information-pvd-keys'">
        <tr>
          <th>JSON key</th>
          <th>Description</th>
          <th>Type</th>
          <th>Example</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'pvd-option-flags'">
        <tr>
          <th>Bit</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'additional-information-pvd-keys'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:example"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
  <xsl:when test="../@id = 'pvd-option-flags'">
       <tr>
        <td align="center"><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
       </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="iana:registryempty">
  </xsl:template>
  
</xsl:stylesheet>
