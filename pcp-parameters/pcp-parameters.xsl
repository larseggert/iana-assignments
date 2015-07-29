<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'opcodes'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'result-codes'">
        <tr><th>Value</th><th>Name</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'options'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Purpose</th>
          <th>Valid for Opcodes</th>
          <th>Length</th>
          <th>May Appear in</th>
          <th>Maximum Occurrences</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'opcodes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'result-codes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'options'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:purpose"/></td>
          <td><xsl:apply-templates select="iana:valid-for"/></td>
          <td><xsl:apply-templates select="iana:length"/></td>
          <td><xsl:apply-templates select="iana:may-appear-in"/></td>
          <td><xsl:apply-templates select="iana:maximum"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
