<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'isns-parameters-2'">
      <tr>
        <th>Tag</th>
        <th>Attribute</th>
        <th>Length</th>
        <th>Reg Key</th>
        <th>Query Key</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      <xsl:otherwise>
       <tr>
        <th>Value</th>
        <th>Entity Protocol Type</th>
        <th>Reference</th>
       </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
     <xsl:when test="../@id = 'isns-parameters-2'">
      <tr>
       <td><xsl:value-of select="iana:tag"/></td>
       <td><xsl:value-of select="iana:attribute"/></td>
       <td><xsl:value-of select="iana:length"/></td>
       <td><xsl:value-of select="iana:reg_key"/></td>
       <td><xsl:value-of select="iana:query_key"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
      <xsl:otherwise>
       <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:entity_protocol_type"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
       </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
