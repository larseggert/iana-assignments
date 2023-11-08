<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
    <xsl:when test="@id = 'tags'">
    <tr>
    <th>Tag</th>
    <th>Data Item</th>
    <th>Semantics</th>
    <th>Reference</th>
    <th>Template</th>
    </tr>
    </xsl:when>
    <xsl:when test="@id = 'timescales'">
    <tr>
    <th>Timescale</th>
    <th>Value</th>
    <th>Semantics</th>
    <th>Reference</th>
    </tr>
    </xsl:when>
    <xsl:when test="@id = 'time-tag-map-keys'">
    <tr>
    <th>Value</th>
    <th>Semantics</th>
    <th>Reference</th>
    </tr>
    </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
    <xsl:when test="../@id = 'tags'">
     <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>      
       <td><xsl:apply-templates select="iana:semantics"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
       <td><xsl:apply-templates select="iana:file"/></td>
     </tr>
    </xsl:when>
    <xsl:when test="../@id = 'timescales'">
     <tr>
       <td><xsl:apply-templates select="iana:timescale"/></td>
       <td><xsl:value-of select="iana:value"/></td>     
       <td><xsl:apply-templates select="iana:semantics"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
     </tr>
    </xsl:when>
    <xsl:when test="../@id = 'time-tag-map-keys'">
     <tr>
       <td><xsl:value-of select="iana:value"/></td>     
       <td><xsl:apply-templates select="iana:semantics"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
     </tr>
    </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
