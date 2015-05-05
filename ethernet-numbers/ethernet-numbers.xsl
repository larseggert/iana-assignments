<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'ethernet-numbers-2' or
                      @id = 'ethernet-numbers-3' or
                      @id = 'ethernet-numbers-4'">
       <tr>
        <th>Addresses</th>
        <th>Usage</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ethernet-numbers-6'">
       <tr>
        <th>Protocol Number (decimal)</th>
        <th>Protocol Number (hex)</th>
        <th>Description</th>
        <th>References</th>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ethernet-numbers-2' or
                      ../@id = 'ethernet-numbers-3' or
                      ../@id = 'ethernet-numbers-4'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ethernet-numbers-6'">
        <tr>
          <td><xsl:value-of select="iana:decimal"/></td>
          <td><xsl:value-of select="iana:hex"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
