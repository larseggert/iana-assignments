<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'pwe3-parameters-2'">
      <tr>
        <th>PW Type</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'pwe3-parameters-4'">
      <tr>
        <th>Parameter</th>
        <th>ID Length</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'pwe3-parameters-6'">
      <tr>
        <th>AII Type</th>
        <th>Length</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'pwe3-parameters-8'">
      <tr>
        <th>AGI Type</th>
        <th>Length</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'pwe3-parameters-9'">
      <tr>
        <th>Bit Mask</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>    
     <xsl:when test="@id = 'pwe3-parameters-11'">
     </xsl:when>
     <xsl:when test="@id = 'pwe3-parameters-12'">
     </xsl:when>
     <xsl:when test="@id = 'pwe3-parameters-13'">
      <tr>
        <th>Packet Type</th>
        <th>Description</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'pwe3-parameters-14'">
      <tr>
        <th>Bit (Value)</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'pwe3-parameters-15'">
      <tr>
        <th>Bit (Value)</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'pwe3-parameters-17'">
      <tr>
        <th>Type</th>
        <th>Length</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'cc-cv-mep-id'">
     </xsl:when>
      <xsl:when test="@id = 'generic-protocol-flags'">
        <tr>
          <th>Bit (Value)</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'l2vpn-pe-stack'">
          <tr>
            <th>Bit (Value)</th>
            <th>Description</th>
            <th>Reference</th>
          </tr>
      </xsl:when>        
      <xsl:when test="@id = 'gach-application'">
      </xsl:when>        
      <xsl:when test="@id = 'gach-tlv'">
      </xsl:when>      
      <xsl:when test="@id = 'gach-ethernet'">
      </xsl:when>
      <xsl:when test="@id = 'vccv-extended-cv'">
          <tr>
            <th>Bit (Value)</th>
            <th>Description</th>
            <th>Reference</th>
          </tr>
      </xsl:when>
      <xsl:when test="@id = 'icc-rg'">
          <tr>
            <th>Type</th>
            <th>Description</th>
            <th>Reference</th>
          </tr>
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
     <xsl:when test="../@id = 'pwe3-parameters-2'">
      <tr>
       <td><xsl:value-of select="iana:PW_type"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-4'">
      <tr>
       <td><xsl:value-of select="iana:parameter"/></td>
       <td><xsl:value-of select="iana:ID_length"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-6'">
      <tr>
       <td><xsl:value-of select="iana:AII_type"/></td>
       <td><xsl:value-of select="iana:length"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-8'">
      <tr>
       <td><xsl:value-of select="iana:AGI_type"/></td>
       <td><xsl:value-of select="iana:length"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-9'">
      <tr>
       <td><xsl:value-of select="iana:bit_mask"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-11'">
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-12'">
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-13'">
      <tr>
       <td><xsl:value-of select="iana:packet_type"/></td>
       <td><xsl:value-of select="iana:description"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-14'">
      <tr>
        <td>
          <xsl:value-of select="iana:bit"/>
          (<xsl:call-template name="bitvalue">
            <xsl:with-param name="power" select="iana:bit"/>
          </xsl:call-template>)
        </td>
       <td><xsl:apply-templates select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-15'">
      <tr>
        <td>
          <xsl:value-of select="iana:bit"/>
          (<xsl:call-template name="bitvalue">
            <xsl:with-param name="power" select="iana:bit"/>
          </xsl:call-template>)
        </td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'pwe3-parameters-17'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:length"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'cc-cv-mep-id'">
     </xsl:when>
      <xsl:when test="../@id = 'generic-protocol-flags'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'l2vpn-pe-stack'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>      
      <xsl:when test="../@id = 'gach-application'">
      </xsl:when>      
      <xsl:when test="../@id = 'gach-tlv'">
      </xsl:when>      
      <xsl:when test="../@id = 'gach-ethernet'">
      </xsl:when>
      <xsl:when test="../@id = 'vccv-extended-cv'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'icc-rg'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
