<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'uuid-subtypes'">
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Subtype</th>
          <th>Variant</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'uuid-namespace-ids'">
        <tr>
          <th>Namespace</th>
          <th>Namespace ID Value</th>
          <th>Name Reference</th>
          <th>Namespace ID Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'uuid-subtypes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:subtype"/></td>
          <td><xsl:value-of select="iana:variant"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'uuid-namespace-ids'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:nameref"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
