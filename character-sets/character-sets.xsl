<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
     <tr>
       <th>Preferred MIME Name</th>
       <th>Name</th>
       <th>MIBenum</th>
       <th>Source</th>
       <th>Reference</th>
       <th>Aliases</th>
       <th>Note</th>
     </tr>
  </xsl:template>

   <xsl:template match="iana:record">
      <tr>
        <td><xsl:value-of select="iana:preferred_alias"/></td>
        <td><xsl:value-of select="iana:name"/></td>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        <td>
           <xsl:for-each select="iana:alias">
            <xsl:if test="position() > 1"><br/><xsl:text>
</xsl:text></xsl:if>
             <xsl:value-of select="."/>
           </xsl:for-each>
        </td>
        <td><xsl:apply-templates select="iana:note"/></td>
      </tr>
   </xsl:template>

</xsl:stylesheet>
