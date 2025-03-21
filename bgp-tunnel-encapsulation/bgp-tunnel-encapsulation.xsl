<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>     
	  <xsl:when test="@id = 'tunnel-types'">
        <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
        <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'tunnel-sub-tlvs'">
        <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
        <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'flags-field-vxlan-encapsulation-tlv'">
        <tr>
        <th>Bit Position</th>
        <th>Description</th>
        <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'flags-field-nvgre-encapsulation-tlv'">
        <tr>
        <th>Bit Position</th>
        <th>Description</th>
        <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'color-extended-community-flags'">
        <tr>
        <th>Bit Position</th>
        <th>Description</th>
        <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'sr-policy-binding-sid-flags'">
        <tr>
        <th>Bit</th>
        <th>Description</th>
        <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'sr-policy-srv6-binding-sid-flags'">
        <tr>
        <th>Bit</th>
        <th>Description</th>
        <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'sr-policy-segment-flags'">
        <tr>
        <th>Bit</th>
        <th>Description</th>
        <th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'color-extended-community-color-only-types'">
        <tr>
        <th>Type</th>
        <th>Description</th>
        <th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
        </tr>
      </xsl:otherwise>     
    </xsl:choose>
  </xsl:template>


  <xsl:template match="iana:record">
    <xsl:choose>    
      <xsl:when test="../@id = 'tunnel-types'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tunnel-sub-tlvs'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>    
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
