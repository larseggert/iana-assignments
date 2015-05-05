<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>
  <xsl:template name="iana:record_header">
    <xsl:choose>
     
     <xsl:when test="@id = 'mtqp-options-2'">
      <tr>
        <th>Option Identifier</th>
        <th>Option Parameters</th>
        <th>Added Commands</th>
        <th>Standard Commands Affected</th>
        <th>Specification Reference</th>
        <th>Discussion</th>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
     
     <xsl:when test="../@id = 'mtqp-options-2'">
      <tr>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:params"/></td>
       <td><xsl:value-of select="iana:added_commands"/></td>
       <td><xsl:value-of select="iana:affected_commands"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
       <td><xsl:apply-templates select="iana:discussion"/></td>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
