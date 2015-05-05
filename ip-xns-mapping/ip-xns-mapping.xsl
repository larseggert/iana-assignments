<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'ip-xns-mapping-1'">
        <tr><th><pre>     \   upper
lower \       </pre></th><th>DoD IP</th><th>PUP</th><th>NS IP</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ip-xns-mapping-2'">
        <tr><th><pre>     \   upper
lower \       </pre></th><th>DoD IP</th><th>PUP</th><th>NS IP</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ip-xns-mapping-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:lower_protocol"/></td>
          <td align="center"><xsl:value-of select="iana:dod_ip"/></td>
          <td align="center"><xsl:value-of select="iana:pup"/></td>
          <td align="center"><xsl:value-of select="iana:ns_ip"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ip-xns-mapping-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:lower_protocol"/></td>
          <td align="center"><xsl:value-of select="iana:dod_ip"/></td>
          <td align="center"><xsl:value-of select="iana:pup"/></td>
          <td align="center"><xsl:value-of select="iana:ns_ip"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
