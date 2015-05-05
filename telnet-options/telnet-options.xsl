<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <tr>
    <xsl:choose>
     <xsl:when test="@id = 'telnet-options-1'">
        <th>Options</th>
        <th>Name</th>
     </xsl:when>
     <xsl:when test="@id = 'telnet-options-3' or
                     @id = 'telnet-options-11'">
        <th>Command</th>
        <th>Description</th>
     </xsl:when>
      <xsl:when test="@id = 'telnet-options-4' or
                      @id = 'telnet-options-12'">
        <th>Type</th>
        <th>Description</th>
     </xsl:when>
      <xsl:when test="@id = 'telnet-options-5' or
                      @id = 'telnet-options-6' or
                      @id = 'telnet-options-7' or
                      @id = 'telnet-options-8' or
                      @id = 'telnet-options-9' or
                      @id = 'telnet-options-13' or
                      @id = 'telnet-options-14' or
                      @id = 'telnet-options-15' or
                      @id = 'telnet-options-16' or
                      @id = 'telnet-options-17' or
                      @id = 'telnet-options-18'">
        <th>Suboption</th>
        <th>Command</th>
     </xsl:when>
    </xsl:choose>
    <th>Reference</th>
  </tr>
  </xsl:template>
  <xsl:template match="iana:record">
    <tr>
      <td align="center"><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
