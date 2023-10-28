<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'jscontact-version'">
        <tr>
        <th>Major Version</th>
        <th>Highest Minor Version</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'jscontact-properties'">
        <tr>
        <th>Property Name</th>
        <th>Property Type</th>
        <th>Property Context</th>
        <th>Intended Usage</th>
        <th>Since Version</th>
        <th>Until Version</th>
        <th>Change Controller</th>
        <th>Reference/Description</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'jscontact-types'">
        <tr>
        <th>Type Name</th>
        <th>Intended Usage</th>
        <th>Since Version</th>
        <th>Until Version</th>
        <th>Change Controller</th>
        <th>Reference/Description</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'jscontact-enum-values'">
        <tr>
        <th>Property Name</th>
        <th>Context</th>
        <th>Since Version</th>
        <th>Until Version</th>
        <th>Change Controller</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
        <th>Enum Value</th>
        <th>Since Version</th>
        <th>Until Version</th>
        <th>Change Controller</th>
        <th>Reference/Description</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'jscontact-version'">
        <tr>
        <td><xsl:value-of select="iana:major"/></td>
        <td><xsl:value-of select="iana:minor"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'jscontact-properties'">
        <tr>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:type"/></td>
        <td><xsl:apply-templates select="iana:context"/></td>
        <td><xsl:apply-templates select="iana:usage"/></td>
        <td><xsl:apply-templates select="iana:since"/></td>
        <td><xsl:apply-templates select="iana:until"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'jscontact-types'">
        <tr>
        <td><xsl:apply-templates select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:usage"/></td>
        <td><xsl:apply-templates select="iana:since"/></td>
        <td><xsl:apply-templates select="iana:until"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'jscontact-enum-values'">
        <tr>
        <td><xsl:apply-templates select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:context"/></td>
        <td><xsl:apply-templates select="iana:since"/></td>
        <td><xsl:apply-templates select="iana:until"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
        <td><xsl:apply-templates select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:since"/></td>
        <td><xsl:apply-templates select="iana:until"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
