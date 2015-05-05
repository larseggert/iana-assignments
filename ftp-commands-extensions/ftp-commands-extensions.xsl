<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'ftp-commands-extensions-2'">
    <tr>
      <th align="left">cmd</th>
      <th align="left">FEAT code</th>
      <th align="left">description</th>
      <th align="left">type</th>
      <th align="left">conf</th>
      <th>References and Notes</th>
    </tr>
      </xsl:when>
      </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'ftp-commands-extensions-2'">      
    <tr>
      <td><xsl:value-of select="iana:cmd"/></td>
      <td><xsl:value-of select="iana:feat"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:value-of select="iana:type"/></td>
      <td><xsl:apply-templates select="iana:conf"/></td>
      <td><xsl:apply-templates select="iana:refs-notes"/></td>
    </tr>
      </xsl:when>
      </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
