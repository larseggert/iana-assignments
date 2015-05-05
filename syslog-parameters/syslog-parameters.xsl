<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'syslog-parameters-1'">
      <tr>
        <th>Numerical Code</th>
        <th>Facility</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'syslog-parameters-2'">
      <tr>
        <th>Numerical Code</th>
        <th>Severity</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'syslog-parameters-3'">
      <tr>
        <th>Version</th>
        <th>Format</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'syslog-parameters-4'">
      <tr>
        <th>Structured Data ID</th>
        <th>Structured Data Parameter</th>
        <th>Mandatory or Optional</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'syslog-parameters-5'">
      <tr>
        <th>Value</th>
        <th>Protocol Version</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'syslog-parameters-6'">
      <tr>
        <th>Value</th>
        <th>Protocol Version</th>
        <th>Hash Algorithm</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'syslog-parameters-7'">
      <tr>
        <th>Value</th>
        <th>Protocol Version</th>
        <th>Signature Scheme</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'syslog-parameters-8'">
      <tr>
        <th>Value</th>
        <th>Meaning</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'syslog-parameters-9'">
      <tr>
        <th>Value</th>
        <th>Key Blob Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'syslog-parameters-1' or
                      ../@id = 'syslog-parameters-2' or
                      ../@id = 'syslog-parameters-3' or
                      ../@id = 'syslog-parameters-5' or
                      ../@id = 'syslog-parameters-8' or
                      ../@id = 'syslog-parameters-9'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'syslog-parameters-4'">
        <tr>
          <td><xsl:value-of select="iana:id"/></td>
          <td><xsl:value-of select="iana:param"/></td>
          <td><xsl:value-of select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'syslog-parameters-6' or
                      ../@id = 'syslog-parameters-7'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td align="center"><xsl:value-of select="iana:version"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
