<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
  <xsl:choose>
    <xsl:when test="@id = 'pdu'">
    <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
     </xsl:when>
    <xsl:when test="@id = 'lsp-flooding-scoped-id'">
    <tr><th>Value</th>
      <th>Description</th>
      <th>FS LSP ID Format/TLV Format</th>
      <th>IIH Announce P2P</th>
      <th>IIH Announce L1LAN</th>
      <th>IIH Announce L2LAN</th>
      <th>Reference</th></tr>
    </xsl:when>
  </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
     <xsl:when test="../@id = 'pdu'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>       
     </xsl:when>
     <xsl:when test="../@id = 'lsp-flooding-scoped-id'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:value-of select="iana:format"/></td>
      <td><xsl:value-of select="iana:p2p"/></td>
      <td><xsl:value-of select="iana:l1lan"/></td>
      <td><xsl:value-of select="iana:l2lan"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>       
     </xsl:when>
    </xsl:choose>

  </xsl:template>

</xsl:stylesheet>
