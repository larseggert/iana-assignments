<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:import href="../_support/iana-registry.xsl"/>
  <xsl:template name="iana:record_header">
    <xsl:choose>
      
      <xsl:when test="@id = 'radius-types-3'">
        <tr>
          <th>Value</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'radius-types-2'
        or @id = 'softwire46-configuration-multicast-attributes'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Data Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'radius-types-13'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Registration Date</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'radius-types-19'">
        <tr>
          <th>Identifier</th>
          <th>Token</th>
          <th>Contact</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'radius-types-23'">
        <tr>
          <th>Value</th>
          <th>Capability Token</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'radius-types-24'">
        <tr>
          <th>Value</th>
          <th>Capability Token</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'radius-types-27'">
        <tr>
          <th>Decimal</th>
          <th>Message</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'radius-ip-port-configuration-reporting-tlvs'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Data Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'option-codes-softwire46-priority-attribute'">
        <tr>
          <th>Option Code</th>
          <th>Softwire46 Mechanism</th>
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
      
      <xsl:when test="../@id = 'radius-types-3'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'radius-types-2'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>         
          <td><xsl:value-of select="iana:datatype"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'radius-types-13'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:registration_date"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'radius-types-19'">
        <tr>
          <td><xsl:value-of select="iana:identifier"/></td>
          <td><xsl:value-of select="iana:token"/></td>
          <td><xsl:value-of select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'radius-types-23'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:capability_token"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'radius-types-24'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:capability_token"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'radius-types-27'">
        <tr>
          <td><xsl:value-of select="iana:decimal"/></td>
          <td><xsl:value-of select="iana:message"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'radius-ip-port-configuration-reporting-tlvs'
        or ../@id = 'softwire46-configuration-multicast-attributes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>         
          <td><xsl:value-of select="iana:datatype"/></td>
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
  
  <xsl:template name="iana:registryempty">
  </xsl:template>
  
</xsl:stylesheet>
