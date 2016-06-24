<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
     <tr>
    <xsl:choose>
      <xsl:when test="@id = 'rtp-parameters-1'">
       <th>PT</th>
       <th>Encoding Name</th>
       <th>Audio/Video (A/V)</th>
       <th>Clock Rate (Hz)</th>
       <th>Channels</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'rtp-parameters-2'">
       <th>Media Type</th>
       <th>Subtype</th>
       <th>Clock Rate (Hz)</th>
       <th>Channels (audio)</th>
       <th>Reference</th>
      </xsl:when>
      
      <xsl:when test="@id = 'rtp-parameters-4' or @id = 'rtp-parameters-5'">
       <th>Value</th>
       <th>Abbrev.</th>
       <th>Name</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'rtp-parameters-6' or @id = 'rtp-parameters-12'">
       <th>Value</th>
       <th>Name</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'rtp-parameters-7'">
       <th>Profile Name</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'rtp-parameters-8' or @id = 'rtp-parameters-9' or @id = 'rtp-parameters-11'">
       <th>Value</th>
       <th>Name</th>
       <th>Long Name</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'rtp-parameters-10'">
       <th>Extension URI</th>
       <th>Description</th>
       <th>Contact</th>
       <th>Reference</th>
      </xsl:when>
     <xsl:when test="@id = 'sdes-compact-header-extensions'">
       <th>Extension URI</th>
       <th>Description</th>
       <th>Contact</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'rtp-parameters-13'">
       <th>Type</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'rtp-parameters-15'">
       <th>Code</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
    </xsl:choose>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
     <tr>
    <xsl:choose>
       <xsl:when test="../@id = 'rtp-parameters-1'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:av"/></td>
       <td><xsl:value-of select="iana:clock_rate"/></td>
       <td><xsl:value-of select="iana:channels"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'rtp-parameters-2'">
       <td><xsl:value-of select="iana:type"/></td>
       <td><xsl:value-of select="iana:subtype"/></td>
       <td><xsl:value-of select="iana:clock_rate"/></td>
       <td><xsl:value-of select="iana:channels"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      
      <xsl:when test="../@id = 'rtp-parameters-4' or ../@id = 'rtp-parameters-5'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:abbrev"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'rtp-parameters-6' or ../@id = 'rtp-parameters-12' or ../@id = 'rtp-parameters-13'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'rtp-parameters-7'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'rtp-parameters-8' or ../@id = 'rtp-parameters-9' or ../@id = 'rtp-parameters-11'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:long_name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'rtp-parameters-10'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:contact"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
     <xsl:when test="../@id = 'sdes-compact-header-extensions'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:contact"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'rtp-parameters-14'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'rtp-parameters-15'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
    </xsl:choose>
     </tr>
  </xsl:template>
</xsl:stylesheet>
