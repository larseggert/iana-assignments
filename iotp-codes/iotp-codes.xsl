<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'iotp-codes-1'">
        <tr>
          <th>Attribute</th>
          <th>Values</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-2'">
        <tr>
          <th>Brand/BrandID</th>
          <th>Organization</th>
          <th>Contact Person/E-mail address</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-3'">
        <tr>
          <th>CurrencyAmount/CurrCode</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-4'">
        <tr>
          <th>CurrencyAmount/CurrCodeType</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-5'">
        <tr>
          <th>DeliveryData/DelivMethod</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-6'">
        <tr>
          <th>PackagedContent/Content</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-7'">
        <tr>
          <th>RelatedTo/RelationshipType</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-8'">
        <tr>
          <th>Status/StatusType</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-9'">
        <tr>
          <th>TradingRole/Trading Role</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-10'">
        <tr>
          <th>TransId/IOtpTransType</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iotp-codes-11'">
        <tr>
          <th>Attribute/Content</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'iotp-codes-1'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'iotp-codes-2'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref[@type = 'person']"/></td>
          <td><xsl:apply-templates select="iana:xref[@type != 'person']"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
