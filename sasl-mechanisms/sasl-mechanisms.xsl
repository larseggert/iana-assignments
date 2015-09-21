<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'rsvp-te-parameters-1'">
       <tr>
        <th>Mechanism</th>
        <th>Usage</th>
        <th>Reference</th>
        <th>Owner</th>
       </tr>
      </xsl:when>
      <xsl:when test="@id = 'scram'">
       <tr>
        <th>Mechanism</th>
        <th>Usage</th>
        <th>Reference</th>
        <th>Minimum Iteration-Count</th>
        <th>Associated OID</th>
        <th>Owner</th>
       </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
  <xsl:choose>
    <xsl:when test="../@id = 'sasl-mechanisms-1'">
      <tr>
        <td><xsl:value-of select="iana:mechanism"/></td>
        <td><xsl:value-of select="iana:usage"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        <td><xsl:apply-templates select="iana:controller"/></td>
       </tr>
      </xsl:when>
      <xsl:when test="../@id = 'scram'">
        <tr>
          <td><xsl:value-of select="iana:mechanism"/></td>
          <td><xsl:value-of select="iana:usage"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:iteration"/></td>
          <td><xsl:value-of select="iana:oid"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
         </tr>
        </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
