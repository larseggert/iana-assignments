<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'version-scheme-values'">
        <tr>
          <th>Index</th>
          <th>Version Scheme Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'entity-role-values'">
        <tr>
          <th>Index</th>
          <th>Role Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'link-ownership-values'">
        <tr>
          <th>Index</th>
          <th>Ownership Type Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'link-relationship-values'">
        <tr>
          <th>Index</th>
          <th>Relationship Type Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'link-use-values'">
        <tr>
          <th>Index</th>
          <th>Link Use Type Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'version-scheme-values'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'entity-role-values'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'link-ownership-values'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'link-relationship-values'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'link-use-values'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
