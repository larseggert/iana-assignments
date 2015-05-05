<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'gach-application'">
          <tr>
            <th>Application ID</th>
            <th>Description</th>
            <th>Reference</th>
          </tr>
      </xsl:when>        
      <xsl:when test="@id = 'gach-tlv'">
          <tr>
            <th>Type ID</th>
            <th>Type Name</th>
            <th>Reference</th>
          </tr>
      </xsl:when>      
      <xsl:when test="@id = 'gach-ethernet'">
          <tr>
            <th>Type ID</th>
            <th>Type Name</th>
            <th>Reference</th>
          </tr>
      </xsl:when>
      <xsl:when test="@id = 'cc-cv-mep-id'">
      <tr>
       <th>Value</th>
       <th>Name</th>
       <th>Reference</th>
      </tr>
      </xsl:when>
      <xsl:when test="@id = 'measurement-timestamp'">
        <tr><th>Type</th><th>Description</th><th>Size in Bits</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'loss-delay-control-code-query'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'loss-delay-control-code-response'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'loss-delay-measurement-tlv'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'fault-message-type'">
        <tr><th>Msg Type</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'fault-flag'">
        <tr><th>Bit</th><th>Hex</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'fault-tlv'">
        <tr><th>Value</th><th>TLV Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'mpls-psc-cap-flag'">
      <tr>
       <th>Bit</th>
       <th>Hex Value</th>
       <th>Capability</th>
       <th>Reference</th>
      </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'measurement-timestamp'">
        <tr>
          <td align="center"><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:size"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'fault-flag'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:hex"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mpls-psc-cap-flag'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:hex"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
