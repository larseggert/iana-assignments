<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'pop3-extension-mechanism-1'">
       <tr>
        <th>CAPA Tag</th>
        <th>CAPA Args</th>
        <th>Added Cmds</th>
        <th>Cmds Affected</th>
        <th>List</th>
        <th>Diffs</th>
        <th>Cmd Valid</th>
        <th>References</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'pop3-extension-mechanism-2'">
       <tr>
        <th>Response Code</th>
        <th>Response Types</th>
        <th>Commands</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'pop3-extension-mechanism-1'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:capa_args"/></td>
          <td><xsl:value-of select="iana:added_cmds"/></td>
          <td><xsl:value-of select="iana:cmds_affected"/></td>
          <td><xsl:value-of select="iana:list"/></td>
          <td><xsl:value-of select="iana:diffs"/></td>
          <td><xsl:value-of select="iana:cmd_valid"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'pop3-extension-mechanism-2'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:commands"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
