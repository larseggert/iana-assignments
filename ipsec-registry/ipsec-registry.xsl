<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl"/>
  <xsl:template name="iana:record_header">
    <xsl:choose>
      
     <xsl:when test="@id = 'ipsec-registry-2'">
       <tr>
        <th>Value</th>
        <th>Class</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-4'">
       <tr>
        <th>Value</th>
        <th>Ecryption Algorithm</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-6'">
       <tr>
        <th>Value</th>
        <th>Hash Algorithm</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-8'">
       <tr>
        <th>Value</th>
        <th>Method</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-10'">
       <tr>
        <th>Value</th>
        <th>Group Description</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-12'">
       <tr>
        <th>Value</th>
        <th>Group Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-14'">
       <tr>
        <th>Value</th>
        <th>Life Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-16'">
       <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-17'">
       <tr>
        <th>Value</th>
        <th>Exchange Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-18'">
       <tr>
        <th>Value</th>
        <th>Phase</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-19'">
       <tr>
        <th>Value</th>
        <th>DOI</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-22'">
       <tr>
        <th>Range</th>
        <th>Registration Procedures</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-21'">
       <tr>
        <th>Value</th>
        <th>Next Payload Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-24'">
       <tr>
        <th>Value</th>
        <th>Nofity Messages - Error Types</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ipsec-registry-25'">
       <tr>
        <th>Value</th>
        <th>Nofity Messages - Status Types</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'ipsec-registry-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ipsec-registry-4' or ../@id = 'ipsec-registry-6' or ../@id = 'ipsec-registry-8' or ../@id = 'ipsec-registry-12' or ../@id = 'ipsec-registry-14' or ../@id = 'ipsec-registry-16' or ../@id = 'ipsec-registry-17' or ../@id = 'ipsec-registry-18' or ../@id = 'ipsec-registry-19' or ../@id = 'ipsec-registry-21' or ../@id = 'ipsec-registry-24' or ../@id = 'ipsec-registry-25'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ipsec-registry-10'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:note"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ipsec-registry-22'">
        <tr>
          <td align="center"><xsl:value-of select="iana:range"/></td>
          <td><xsl:value-of select="iana:registration_rule"/></td>
          <td><xsl:value-of select="iana:note"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
