<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl"/>


  <!-- Remove the "Registry is empty" Note -->
  <xsl:template name="iana:registryempty">
    <xsl:if test="not(@id = 'isakmp-registry-16')">
      <table>
        <tr>
          <td colspan="0">
            <i>Registry is empty.</i>
          </td>
        </tr>
      </table>
    </xsl:if>
  </xsl:template>

  <xsl:template name="iana:record_header">
    <tr>
      <xsl:choose>
        <xsl:when test="@id = 'isakmp-registry-1'">
          <th>Value</th>
          <th>Situation</th>
          <th>References</th>
        </xsl:when>
        <xsl:when test="@id = 'isakmp-registry-3'">
          <th>Value</th>
          <th>Protocol ID</th>
          <th>References</th>
        </xsl:when>
        <xsl:when test="@id = 'isakmp-registry-5'">
          <th>Value</th>
          <th>Transform</th>
          <th>References</th>
        </xsl:when>
        <xsl:when test="@id = 'isakmp-registry-7' or @id = 'isakmp-registry-9' or @id = 'isakmp-registry-11'">
          <th>Value</th>
          <th>Transform ID</th>
          <th>References</th>
        </xsl:when>
        <xsl:when test="@id = 'isakmp-registry-13'">
          <th>Value</th>
          <th>Type</th>
          <th>Class</th>
          <th>References</th>
        </xsl:when>
        <xsl:when test="@id = 'isakmp-registry-21'">
          <th>Value</th>
          <th>Description</th>
          <th>References</th>
        </xsl:when>
        <xsl:when test="@id = 'isakmp-registry-29'">
          <th>Value</th>
          <th>Domain</th>
          <th>References</th>
        </xsl:when>
        <xsl:when test="@id = 'isakmp-registry-31'">
          <th>Value</th>
          <th>ID Type</th>
          <th>References</th>
        </xsl:when>
        <xsl:when test="@id = 'isakmp-registry-34'">
          <th>Value</th>
          <th>Notify Messages - Error Types</th>
          <th>References</th>
        </xsl:when>
        <xsl:when test="@id = 'isakmp-registry-36'">
          <th>Value</th>
          <th>Notify Messages - Status Types</th>
          <th>References</th>
        </xsl:when>
        <xsl:otherwise>
          <th>Value</th>
          <th>Name</th>
          <th>References</th>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
  </xsl:template>
  <xsl:template match="iana:record">
    <tr>
      <xsl:choose>
        <xsl:when test="../@id = 'isakmp-registry-13'">
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
  </xsl:template>
</xsl:stylesheet>
