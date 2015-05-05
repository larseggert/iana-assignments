<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'uaddr-formats-1'">
        <tr>
          <th>Basis</th>
          <th>Description and/or Reference</th>
          <th>Point of Contact</th>
          <th>Cross Reference to RPC Netid Registry</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:basis"/></td>
      <td><xsl:apply-templates select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:contact"/></td>
      <td><xsl:value-of select="iana:value"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
