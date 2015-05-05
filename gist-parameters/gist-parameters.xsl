<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'nslpids'">
        <tr><th>NSLPID</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      
      
      
      <xsl:when test="@id = 'error-codes'">
        <tr><th>Error Code</th>
          <th>Error Case</th>
          <th>Class</th>
          <th>Additional Information</th>
          <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'gist-messages' or @id = 'gist-objects' or @id = 'gist-routing-methods' or @id = 'gist-ma-protocol-ids' or @id = 'error1-subcodes' or @id = 'error9-subcodes' or @id = 'error10-subcodes' or @id = 'error12-subcodes' or @id = 'additional-info'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'nslpids' or ../@id = 'gist-messages' or ../@id = 'gist-objects' or ../@id = 'gist-routing-methods' or ../@id = 'gist-ma-protocol-ids' or ../@id = 'error1-subcodes' or ../@id = 'error9-subcodes' or ../@id = 'error10-subcodes' or ../@id = 'error12-subcodes' or ../@id = 'additional-info'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'error-codes'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:class"/></td>
          <td><xsl:value-of select="iana:additional"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      
      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
