<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'structured-syntax-suffix'">
        <tr><th>Name</th>
          <th>+suffix</th>
          <th>References</th>
          <th>Encoding Considerations</th>
          <th>Interoperability Considerations</th>
          <th>Fragment Identifier Considerations</th>
          <th>Security Considerations</th>
          <th>Contact</th>
          <th>Author/Change Controller</th>
          <th>Registration Date</th>
          <th>Modification Date(s)</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'structured-syntax-suffix'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:suffix"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:encoding"/></td>
          <td><xsl:apply-templates select="iana:interop"/></td>
          <td><xsl:apply-templates select="iana:fragment"/></td>
          <td><xsl:apply-templates select="iana:security"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:value-of select="@date"/></td>
          <td><xsl:value-of select="iana:mod-dates"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
