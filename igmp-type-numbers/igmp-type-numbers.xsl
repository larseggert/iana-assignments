<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'igmp-type-numbers-1'">
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'igmp-mld-extension-types'">
      <tr>
        <th>Extension Type</th>
        <th>Length</th>
        <th>Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:otherwise>
      <tr>
        <th>Code</th>
        <th>Name</th>
      </tr>
     </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
     <xsl:when test="../@id = 'igmp-type-numbers-1'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'igmp-mld-extension-types'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:length"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:otherwise>
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td align="center"><xsl:value-of select="iana:name"/></td>
      </tr>
     </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
