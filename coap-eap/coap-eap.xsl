<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'coap-eap-cipher-suites'">
        <tr>
        <th>Value</th>
        <th>Algorithms</th>
        <th>Description</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'coap-eap-information-elements'">
        <tr>
        <th>Name</th>
        <th>Label</th>
        <th>CBOR Type</th>
        <th>Description</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'coap-eap-cipher-suites'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:algs"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'coap-eap-information-elements'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:label"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
