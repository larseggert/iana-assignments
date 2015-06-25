<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'mobileip-numbers-1'">
        <tr>
          <th>Value</th>
          <th>Message Types</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mobileip-numbers-2'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Permitted for Notification Messages (Y/N)</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mobileip-numbers-3' or @id = 'mobileip-numbers-13' or @id = 'mobileip-numbers-14' or @id = 'mobileip-numbers-16' or @id = 'mobileip-numbers-17' or @id = 'mobileip-numbers-18' or @id = 'mobileip-numbers-19' or @id = 'mobileip-numbers-20' or @id = 'mobileip-numbers-21' or @id = 'mobileip-numbers-26' or @id = 'mobileip-numbers-27' or @id = 'mobileip-numbers-28' or @id = 'mobileip-numbers-29' or @id = 'mobileip-numbers-30' or @id = 'mobileip-numbers-31' or @id = 'mobileip-numbers-32' or @id = 'mobileip-numbers-33' or @id = 'mobileip-numbers-36'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mobileip-numbers-5' or @id = 'mobileip-numbers-6' or @id = 'mobileip-numbers-7' or @id = 'mobileip-numbers-8' or @id = 'mobileip-numbers-9' or @id = 'mobileip-numbers-10' or @id = 'mobileip-numbers-11' or @id = 'mobileip-numbers-12' or @id = 'mobileip-numbers-23' or @id = 'mobileip-numbers-25' or @id = 'mobileip-numbers-37' or @id = 'mobileip-numbers-38' or @id = 'mobileip-numbers-39'">
        <tr>
          <th>Subtype Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mobileip-numbers-15'">
        <tr>
          <th>Range</th>
          <th>Guideline</th>
          <th>Registration Procedures</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mobileip-numbers-22'">
        <tr>
          <th>Replay Method</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mobileip-numbers-24'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mobileip-numbers-34'">
        <tr>
          <th>Code</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'extension-subtype-154'">
        <tr>
          <th>Subtype Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'mobileip-numbers-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td align="center"><xsl:value-of select="iana:notification"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mobileip-numbers-15'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:value-of select="iana:registration_rule"/></td>
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
