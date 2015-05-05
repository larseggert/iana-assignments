<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'rpc-netids-1'">
        <tr>
          <th>Netid</th>
          <th>Constant Name</th>
          <th>Description and/or Reference</th>
          <th>Point of Contact</th>
          <th>Cross Reference to Uaddr Format Registry</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rpc-netids-2'">
        <tr>
          <th>Netid</th>
          <th>Constant Name</th>
          <th>RFC(s) and Description (if needed)</th>
          <th>Point of Contact</th>
          <th>Cross Reference to Uaddr Format Registry</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:netid"/></td>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:contact"/></td>
      <td><xsl:value-of select="iana:cr"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
