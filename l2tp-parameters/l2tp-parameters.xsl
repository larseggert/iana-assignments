<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'l2tp-parameters-1'">
        <tr>
          <th>Attribute Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'l2tp-parameters-3' or @id = 'l2tp-parameters-4' or @id = 'l2tp-parameters-5' or @id = 'l2tp-parameters-6' or @id = 'l2tp-parameters-7' or @id = 'l2tp-parameters-8' or @id = 'l2tp-parameters-9' or @id = 'l2tp-parameters-16' or @id = 'l2tp-parameters-17' or @id = 'l2tp-parameters-24' or @id = 'l2tp-parameters-25' or @id = 'l2tp-parameters-31' or @id = 'l2tp-parameters-32' or @id = 'l2tp-parameters-35' or @id = 'l2tp-parameters-36' or @id = 'l2tp-parameters-38'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'l2tp-parameters-34' or @id = 'l2tp-parameters-37'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Registration Date</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'l2tp-parameters-11' or @id = 'l2tp-parameters-12' or @id = 'l2tp-parameters-13' or @id = 'l2tp-parameters-14' or @id = 'l2tp-parameters-15'">
        <tr>
          <th>Value</th>
          <th>Message Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'l2tp-parameters-18'">
        <tr>
          <th>Range</th>
          <th>Registration Procedures</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'l2tp-parameters-19' or @id = 'l2tp-parameters-20' or @id = 'l2tp-parameters-21' or @id = 'l2tp-parameters-22'">
        <tr>
          <th>Value</th>
          <th>Description</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'l2tp-parameters-27' or @id = 'l2tp-parameters-28'">
        <tr>
          <th>Bit (Value)</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'l2tp-parameters-29' or @id = 'l2tp-parameters-30'">
        <tr>
          <th>Value</th>
          <th>Meaning</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'l2tp-parameters-39'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'l2tp-parameters-1' or ../@id = 'l2tp-parameters-11'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td style="white-space:pre-line"><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'l2tp-parameters-18'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:registration_rule"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'l2tp-parameters-19' or ../@id = 'l2tp-parameters-20' or ../@id = 'l2tp-parameters-21' or ../@id = 'l2tp-parameters-22'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td style="white-space:pre">
            <xsl:apply-templates select="iana:description"/>
          </td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'l2tp-parameters-31' or ../@id = 'l2tp-parameters-32' or ../@id = 'l2tp-parameters-35' or ../@id = 'l2tp-parameters-36' or ../@id = 'l2tp-parameters-39'">
        <tr>
          <td align="center">Bit <xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'l2tp-parameters-27' or ../@id = 'l2tp-parameters-28'">
        <tr>
          <td align="center">
            <xsl:value-of select="iana:value"/>
            (<xsl:call-template name="bitvalue">
              <xsl:with-param name="power" select="iana:value"/>
            </xsl:call-template>)
          </td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'l2tp-parameters-34' or ../@id = 'l2tp-parameters-37'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td align="center"><xsl:apply-templates select="@date"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
