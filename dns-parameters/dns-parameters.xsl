<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'dns-parameters-2'">
        <tr>
          <th>Decimal</th>
          <th>Hexadecimal</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dns-parameters-4'">
        <tr>
          <th>TYPE</th>
          <th>Value</th>
          <th>Meaning</th>
          <th>Reference</th>
          <th>Template</th>
          <th>Registration Date</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dns-parameters-5'">
        <tr>
          <th>OpCode</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dns-parameters-6'">
        <tr>
          <th>RCODE</th>
          <th>Name</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dns-parameters-8'">
        <tr>
          <th>Decimal</th>
          <th>Hexadecimal</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dns-parameters-9'">
        <tr>
          <th>Identifier Type Code</th>
          <th>Identifier</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dns-parameters-10'">
        <tr>
          <th>Value</th>
          <th>Type</th>
          <th>Status</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dns-parameters-11'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Status</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dns-parameters-12' or @id = 'dns-parameters-13'">
        <tr>
          <th>Bit</th>
          <th>Flag</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'dns-parameters-14'">
        <tr>
          <th>Range</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'csync-flags'">
        <tr>
          <th>Bit</th>
          <th>Flag</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'dns-parameters-2' 
        or ../@id = 'dns-parameters-8'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td align="center"><xsl:value-of select="iana:hex"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dns-parameters-4'">
        <tr>
          <td><xsl:value-of select="iana:type"/></td>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:file"/></td>
          <td><xsl:value-of select="@date"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dns-parameters-5' 
        or ../@id = 'dns-parameters-9' 
        or ../@id = 'dns-parameters-14'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dns-parameters-6' 
        or ../@id = 'csync-flags'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dns-parameters-10' 
        or ../@id = 'dns-parameters-11'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'dns-parameters-12' 
        or ../@id = 'dns-parameters-13'">
        <tr>
          <td><xsl:value-of select="iana:bit"/></td>
          <td align="center"><xsl:value-of select="iana:flag"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
