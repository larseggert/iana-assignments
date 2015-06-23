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
          <th>Type</th>
          <th>Name</th>
          <th>Allowed on LSP_ATTRIBUTES</th>
          <th>Allowed on LSP_REQUIRED_ATTRIBUTES</th>
          <th>Allowed on LSP Hop Attributes</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rsvp-te-parameters-2'">
        <tr>
          <th>Bit No</th>
          <th>Name</th>
          <th>Attribute Flags Path</th>
          <th>Attribute Flags Resv</th>
          <th>RRO</th>
          <th>ERO</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rsvp-te-parameters-3'">
        <tr>
          <th>Bit Flag</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rsvp-te-parameters-4'">
        <tr>
          <th>Flag</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Value</th>
          <th>Meaning</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'rsvp-te-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:LSP_ATTRIBUTES"/></td>
          <td align="center"><xsl:value-of select="iana:LSP_REQUIRED_ATTRIBUTES"/></td>
          <td align="center"><xsl:value-of select="iana:LSP_Hop_Attributes"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rsvp-te-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:path"/></td>
          <td align="center"><xsl:value-of select="iana:resv"/></td>
          <td align="center"><xsl:value-of select="iana:RRO"/></td>
          <td align="center"><xsl:value-of select="iana:ERO"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rsvp-te-parameters-3'">
        <tr>
          <td align="center" style="font-family:monospace"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rsvp-te-parameters-4'">
        <tr>
          <td align="center" style="font-family:monospace"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center" style="font-family:monospace"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
