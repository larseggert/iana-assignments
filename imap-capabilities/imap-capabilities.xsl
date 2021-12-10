<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'imap-capabilities-1'">
      <tr>
        <th>Capability Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'imap-capabilities-2'">
        <tr>
          <th>Name of the Quota Resource Type</th>
          <th>Description</th>
          <th>Extra required IMAP commands/responses</th>
          <th>Extra optional IMAP commands/responses</th>
          <th>Author</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
     <xsl:when test="../@id = 'imap-capabilities-1'">
      <tr>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'imap-capabilities-2'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:value-of select="iana:required"/></td>
          <td><xsl:value-of select="iana:optional"/></td>
          <td><xsl:apply-templates select="iana:author"/></td>
          <td><xsl:apply-templates select="iana:change"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
