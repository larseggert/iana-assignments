<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'http3-parameters-frame-types'">
        <tr>
        <th>Value</th>
        <th>Frame Type</th>
        <th>Status</th>
        <th>Specification</th>
        <th>Date</th>
        <th>Change Controller</th>
        <th>Contact</th>
        <th>Notes</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'http3-parameters-settings'">
        <tr>
        <th>Value</th>
        <th>Setting Name</th>
        <th>Default</th>
        <th>Status</th>
        <th>Specification</th>
        <th>Date</th>
        <th>Change Controller</th>
        <th>Contact</th>
        <th>Notes</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'http3-parameters-error-codes'">
        <tr>
        <th>Value</th>
        <th>Name</th>
        <th>Description</th>
        <th>Status</th>
        <th>Specification</th>
        <th>Date</th>
        <th>Change Controller</th>
        <th>Contact</th>
        <th>Notes</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'http3-parameters-stream-types'">
        <tr>
        <th>Value</th>
        <th>Stream Type</th>
        <th>Sender</th>
        <th>Status</th>
        <th>Specification</th>
        <th>Date</th>
        <th>Change Controller</th>
        <th>Contact</th>
        <th>Notes</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'http3-parameters-frame-types'">
        <tr>
        <td><xsl:apply-templates select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:status"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        <td><xsl:apply-templates select="iana:date"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        <td><xsl:apply-templates select="iana:contact"/></td>
        <td><xsl:apply-templates select="iana:notes"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
        <td><xsl:apply-templates select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:status"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        <td><xsl:apply-templates select="iana:date"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        <td><xsl:apply-templates select="iana:contact"/></td>
        <td><xsl:apply-templates select="iana:notes"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
