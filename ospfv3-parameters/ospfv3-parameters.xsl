<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'ospfv3-parameters-3'">
        <tr><th>Value</th><th>LSA Function Code Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'extended-lsa-sub-tlvs'">
        <tr><th>Value</th><th>Description</th><th>L2BM</th><th>Reference</th></tr>
      </xsl:when>
       <xsl:when test="@id = 'srv6-capabilities'">
        <tr><th>Bit</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
       <xsl:when test="@id = 'srv6-end-sid'">
        <tr><th>Bit</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'srv6-adjacency-sid'">
        <tr><th>Bit</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ospfv3-parameters-1' or ../@id = 'ospfv3-parameters-3' or ../@id = 'ospfv3-parameters-4' or ../@id = 'ospfv3-parameters-6' or ../@id = 'ospfv3-parameters-7' or ../@id = 'ospfv3-parameters-8' or ../@id = 'ospfv3-parameters-9'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ac-lsa'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'extended-lsa-tlvs'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'extended-lsa-sub-tlvs'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:l2bm"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
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
