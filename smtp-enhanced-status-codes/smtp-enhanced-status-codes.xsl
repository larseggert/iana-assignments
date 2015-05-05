<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'smtp-enhanced-status-codes-3'">
        <tr>
          <th>Code</th>
          <th>Sample Text</th>
          <th>Associated basic status code</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Submitter</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Code</th>
          <th>Summary</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Submitter</th>
          <th>Change Controller</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'smtp-enhanced-status-codes-3'">
        <tr>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:sample"/></td>
          <td><xsl:value-of select="iana:basic_code"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
          <td><xsl:value-of select="iana:submitter"/></td>
          <td><xsl:value-of select="iana:change_controller"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:summary"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
          <td><xsl:value-of select="iana:submitter"/></td>
          <td><xsl:value-of select="iana:change_controller"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
