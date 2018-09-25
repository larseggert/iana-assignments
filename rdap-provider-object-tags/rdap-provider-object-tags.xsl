<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:import href="../_support/iana-registry.xsl" />
  
  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'rdap-provider-object-tags-1'">
        <tr>
          <th>Contact</th>
          <th>Identifier</th>
          <th>URL</th>
          <th>Change Controller</th>
          <th>Specification</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'rdap-provider-object-tags-1'">
        <tr>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:value-of select="iana:id"/></td>
          <td><xsl:apply-templates select="iana:url"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template name="url">
    <xsl:for-each select="iana:url/iana:server">
      <xsl:value-of select="." />
      <xsl:if test="position() != last()">
        <br />
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>
