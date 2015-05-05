<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>
  <xsl:template name="iana:record_header">
    <xsl:choose>
     
     <xsl:when test="@id = 'sieve-environment-items-2'">
      <tr>
        <th>Capability name</th>
        <th>Description</th>
        <th>RFC number</th>
        <th>Contact address</th>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
     
     <xsl:when test="../@id = 'sieve-environment-items-2'">
      <tr>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref[@type='rfc' or @type='draft']"/></td>
       <td><xsl:apply-templates select="iana:xref[@type='person']"/></td>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
