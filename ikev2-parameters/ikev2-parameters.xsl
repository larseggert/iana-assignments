<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'ikev2-parameters-1'">
      <tr>
        <th>Value</th>
        <th>Exchange Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-2'">
      <tr>
        <th>Value</th>
        <th>Next Payload Type</th>
        <th>Notation</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-3'">
      <tr>
        <th>Type</th>
        <th>Description</th>
        <th>Used In</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-4'">
      <tr>
        <th>Value</th>
        <th>Attribute Type</th>
        <th>Format</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-5'">
      <tr>
        <th>Number</th>
        <th>Name</th>
        <th>Status</th>
        <th>ESP Reference</th>
        <th>IKEv2 Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-6' or
                     @id = 'ikev2-parameters-7'">
      <tr>
        <th>Number</th>
        <th>Name</th>
        <th>Status</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-8'">
      <tr>
        <th>Number</th>
        <th>Name</th>
        <th>Status</th>
        <th>Recipient Tests</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-9'">
      <tr>
        <th>Number</th>
        <th>Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-10'">
      <tr>
        <th>Value</th>
        <th>ID Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-11'">
      <tr>
        <th>Value</th>
        <th>Certificate Encoding</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-12'">
      <tr>
        <th>Value</th>
        <th>Authentication Method</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-14'">
      <tr>
        <th>Value</th>
        <th>Notify Message Error Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-16'">
      <tr>
        <th>Value</th>
        <th>Notify Message Status Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-17'">
      <tr>
        <th>Value</th>
        <th>Compression Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-18'">
      <tr>
        <th>Protocol ID</th>
        <th>Protocol</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-19'">
      <tr>
        <th>Value</th>
        <th>TS Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-20'">
      <tr>
        <th>Value</th>
        <th>CFG Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-21'">
      <tr>
        <th>Value</th>
        <th>Attribute Type</th>
        <th>Multi-Valued</th>
        <th>Length</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-22'">
      <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-parameters-23'">
      <tr>
        <th>Value</th>
        <th>ROHC Attribute Type</th>
        <th>Format</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'secure-password-methods'">
      <tr>
       <th>Value</th>
       <th>Description</th>
       <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'hash-algorithms'">
      <tr>
       <th>Value</th>
       <th>Hash Algorithm</th>
       <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ikev2-post-quantum-preshared-key-id-types'">
        <tr>
          <th>Value</th>
          <th>PPK_ID Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'key-wrap-algorithm-transform-ids'">
        <tr>
          <th>Value</th>
          <th>Key Wrap Algorithm</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'group-controller-authentication-method-transform-ids'">
        <tr>
          <th>Value</th>
          <th>Group Controller Authentication Method</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'gsa-attributes'">
        <tr>
          <th>Value</th>
          <th>GSA Attributes</th>
          <th>Format</th>
          <th>Multi-Valued</th>
          <th>Used in Protocol</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'group-wide-policy-attributes'">
        <tr>
          <th>Value</th>
          <th>GW Policy Attributes</th>
          <th>Format</th>
          <th>Multi-Valued</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'group-key-bag-attributes'">
        <tr>
          <th>Value</th>
          <th>Group Key Bag Attributes</th>
          <th>Format</th>
          <th>Multi-Valued</th>
          <th>Used in Protocol</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'member-key-bag-attributes'">
        <tr>
          <th>Value</th>
          <th>Member Key Bag Attributes</th>
          <th>Format</th>
          <th>Multi-Valued</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <xsl:choose>
     <xsl:when test="../@id = 'ikev2-parameters-2'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:notation"/></td>
       <td><xsl:apply-templates select="iana:reference"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ikev2-parameters-3'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:used_in"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ikev2-parameters-4' or ../@id = 'ikev2-parameters-23'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:format"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ikev2-parameters-5'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:status"/></td>
       <td><xsl:apply-templates select="iana:esp"/></td>
       <td><xsl:apply-templates select="iana:ikev2"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ikev2-parameters-6' or ../@id = 'ikev2-parameters-7'">
     <tr>
      <td align="center"><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:status"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ikev2-parameters-8'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:status"/></td>
       <td><xsl:apply-templates select="iana:recipient"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ikev2-parameters-13' or
                     ../@id = 'ikev2-parameters-15'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:registration_rule"/></td>
       <td><xsl:value-of select="iana:note"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ikev2-parameters-21'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:multi_valued"/></td>
       <td><xsl:value-of select="iana:length"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
      <xsl:when test="../@id = 'gsa-attributes'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:format"/></td>
       <td><xsl:value-of select="iana:multi"/></td>
       <td><xsl:value-of select="iana:used"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'group-wide-policy-attributes'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:format"/></td>
       <td><xsl:value-of select="iana:multi"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'group-key-bag-attributes'">
     <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:format"/></td>
       <td><xsl:apply-templates select="iana:multi"/></td>
       <td><xsl:apply-templates select="iana:used"/></td>
       <td><xsl:apply-templates select="iana:reference"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'member-key-bag-attributes'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:format"/></td>
       <td><xsl:value-of select="iana:multi"/></td>
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
