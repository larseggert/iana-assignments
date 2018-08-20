<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = '_6tisch-6p-version-numbers'">
        <tr>
          <th>Version</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = '_6tisch-6p-message-types'">
        <tr>
          <th>Type</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = '_6tisch-6p-command-identifiers'">
        <tr>
          <th>Identifier</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = '_6tisch-6p-return-codes'">
        <tr>
          <th>Code</th>
          <th>Name</th>
          <th>Description</th>
          <th>Is Error?</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = '_6tisch-6p-scheduling-function-identifiers'">
        <tr>
          <th>SFID</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = '_6tisch-6p-celloptions-bitmap'">
        <tr>
          <th>bit</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = '_6tisch-6p-version-numbers'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = '_6tisch-6p-return-codes'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:error"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
