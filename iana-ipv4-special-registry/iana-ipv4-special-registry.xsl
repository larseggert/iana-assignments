<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Address Block</th>
      <th>Name</th>
      <th>RFC</th>
      <th>Allocation Date</th>
      <th>Termination Date</th>
      <th>Source</th>
      <th>Destination</th>
      <th>Forwardable</th>
      <th>Globally Reachable</th>
      <th>Reserved-by-Protocol</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:apply-templates select="iana:address"/></td>
      <td><xsl:apply-templates select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:spec"/></td>
      <td><xsl:value-of select="iana:allocation"/></td>
      <td>
        <xsl:choose>
          <xsl:when test="iana:termination">
            <xsl:value-of select="iana:termination"/>
          </xsl:when>
          <xsl:otherwise>N/A</xsl:otherwise>
        </xsl:choose>
      </td>
      <td><xsl:apply-templates select="iana:source"/></td>
      <td><xsl:apply-templates select="iana:destination"/></td>
      <td><xsl:apply-templates select="iana:forwardable"/></td>
      <td><xsl:apply-templates select="iana:global"/></td>
      <td><xsl:apply-templates select="iana:reserved"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
