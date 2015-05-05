<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'ppp-numbers-1'">
       <tr>
        <th>Range</th>
        <th>Description</th>
        <th>Registration Procedures</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-2'">
       <tr>
        <th>Value (in hex)</th>
        <th>Protocol Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-3'">
       <tr>
        <th>Code</th>
        <th>Packet Type</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-4' or
                     @id = 'ppp-numbers-5' or
                     @id = 'ppp-numbers-27' or
                     @id = 'ppp-numbers-28'">
       <tr>
        <th>Type</th>
        <th>Configuration Option</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-6'">
       <tr>
        <th>ECP Option</th>
        <th>Configuration Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-7'">
       <tr>
        <th>CCP Option</th>
        <th>Configuration Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-8'">
       <tr>
        <th>SDCP Option</th>
        <th>Configuration Element</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-9'">
       <tr>
        <th>Number</th>
        <th>Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-10'">
       <tr>
        <th>Bit</th>
        <th>FCS</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-11'">
       <tr>
        <th>Class</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-12'">
       <tr>
        <th>Operation</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-13' or 
                     @id = 'ppp-numbers-14' or
                     @id = 'ppp-numbers-15' or
                     @id = 'ppp-numbers-16'">
       <tr>
        <th>Type</th>
        <th>Configuration Option</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-17'">
       <tr>
        <th>Type</th>
        <th>MAC</th>
        <th>Address Format</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-18'">
       <tr>
        <th>Protocol</th>
        <th>Spanning Tree</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-19'">
       <tr>
        <th>Option</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-20'">
       <tr>
        <th>Value (in hex)</th>
        <th>Protocol</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-21'">
       <tr>
        <th>Value</th>
        <th>Protocol</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-22'">
       <tr>
        <th>Value</th>
        <th>Option</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-23'">
       <tr>
        <th>Value (Hex)</th>
        <th>Result Codes for Added field</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-24'">
       <tr>
        <th>Value</th>
        <th>Peer-Class</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-26'">
       <tr>
        <th>OUI (in hex)</th>
        <th>Organization</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-29' or
                     @id = 'ppp-numbers-30'">
       <tr>
        <th>Value (hex)</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ppp-numbers-31'">
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
      <xsl:when test="../@id = 'ppp-numbers-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:registration_rule"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ppp-numbers-3'">
        <tr>
          <td align="center"><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:note"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ppp-numbers-17'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:format"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ppp-numbers-26'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
