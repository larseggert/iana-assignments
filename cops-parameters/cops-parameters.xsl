<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'cops-parameters-1'">
        <tr>
          <th>Range</th>
          <th>Registration Procedures</th>
          <th>Notes</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'cops-parameters-2' or @id = 'cops-parameters-3'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>PIB Module</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-4'">
        <tr>
          <th>c-num</th>
          <th>c-type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-6'">
        <tr>
          <th>R-Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-7'">
        <tr>
          <th>Reason-Code</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-8'">
        <tr>
          <th>Report-Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-9'">
        <tr>
          <th>Command-Code</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-10'">
        <tr>
          <th>Decision-Flag</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-11'">
        <tr>
          <th>Error-Code</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-13'">
        <tr>
          <th>Error-Code</th>
          <th>Error-SubCode Octet 2</th>
          <th>Error-SubCode Octet 3</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-14'">
        <tr>
          <th>Value</th>
          <th>Flag</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-15'">
        <tr>
          <th>s-num</th>
          <th>s-type val</th>
          <th>Description (s-num, s-type)</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-16' or @id = 'cops-parameters-17'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-19'">
        <tr>
          <th>P-Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-21'">
        <tr>
          <th>X-Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-23' or @id = 'cops-parameters-25' or @id = 'cops-parameters-27' or @id = 'cops-parameters-29' or @id = 'cops-parameters-31' or @id = 'cops-parameters-33' or @id = 'cops-parameters-37' or @id = 'cops-parameters-39'">
        <tr>
          <th>SubType</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-35'">
        <tr>
          <th>A-Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-41'">
        <tr>
          <th>ErrorValue</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cops-parameters-43' or @id = 'cops-parameters-45' or @id = 'cops-parameters-47'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'cops-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:registration_rule"/></td>
          <td><xsl:apply-templates select="iana:note"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'cops-parameters-2' or ../@id = 'cops-parameters-3'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:module"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'cops-parameters-4'">
        <tr>
          <td align="center"><xsl:value-of select="iana:cnum"/></td>
          <td align="center"><xsl:value-of select="iana:ctype"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'cops-parameters-6' or ../@id = 'cops-parameters-7' or ../@id = 'cops-parameters-8' or ../@id = 'cops-parameters-9' or ../@id = 'cops-parameters-10' or ../@id = 'cops-parameters-11' or ../@id = 'cops-parameters-14' or ../@id = 'cops-parameters-16' or ../@id = 'cops-parameters-17' or ../@id = 'cops-parameters-19' or ../@id = 'cops-parameters-19' or ../@id = 'cops-parameters-21' or ../@id = 'cops-parameters-23' or ../@id = 'cops-parameters-25' or ../@id = 'cops-parameters-27' or ../@id = 'cops-parameters-29' or ../@id = 'cops-parameters-31' or ../@id = 'cops-parameters-33' or ../@id = 'cops-parameters-35' or ../@id = 'cops-parameters-37' or ../@id = 'cops-parameters-39' or ../@id = 'cops-parameters-41' or ../@id = 'cops-parameters-43' or ../@id = 'cops-parameters-45' or ../@id = 'cops-parameters-47'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'cops-parameters-13'">
        <tr>
          <td align="center"><xsl:value-of select="iana:code"/></td>
          <td align="center"><xsl:value-of select="iana:octet2"/></td>
          <td align="center"><xsl:value-of select="iana:octet3"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'cops-parameters-15'">
        <tr>
          <td align="center"><xsl:value-of select="iana:snum"/></td>
          <td align="center"><xsl:value-of select="iana:stype"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
