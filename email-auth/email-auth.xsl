<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'email-auth-methods'">
        <tr>
          <th>Method</th>
          <th>Defined</th>
          <th>ptype</th>
          <th>Property</th>
          <th>Value</th>
          <th>Status</th>
          <th>Version</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'email-auth-result-names'">
        <tr>
          <th>Code</th>
          <th>Defined</th>
          <th>Auth Method(s)</th>
          <th>Meaning</th>
          <th>Status</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'property-types'">
        <tr>
          <th>ptype</th>
          <th>Definition</th>
          <th>Description</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'email-auth-methods'">
        <tr>
          <td>
            <xsl:value-of select="iana:method"/>
          </td>
          <td>
            <xsl:apply-templates select="iana:xref"/>
          </td>
          <td>
            <xsl:for-each select="iana:ptype">
              <xsl:if test="position() != 1">, </xsl:if>
              <xsl:value-of select="."/>
            </xsl:for-each>
          </td>
          <td>
            <xsl:value-of select="iana:name"/>
          </td>
          <td>
            <xsl:apply-templates select="iana:value"/>
          </td>
          <td>
            <xsl:value-of select="iana:status"/>
          </td>            
          <td>
            <xsl:value-of select="iana:version"/>
          </td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'email-auth-result-names'">
        <tr>
          <td>
            <xsl:value-of select="iana:code"/>
          </td>
          <td>
            <xsl:apply-templates select="iana:xref"/>
          </td>
          <td>
            <xsl:value-of select="iana:name"/>
          </td>
          <td>
            <xsl:apply-templates select="iana:meaning"/>
          </td>
          <td>
            <xsl:value-of select="iana:status"/>
          </td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'property-types'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
