<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
     <tr>
       <th>Index</th>
       <th>Name</th>
    <xsl:choose>
      <xsl:when test="@id = 'wave-avi-codec-registry-2'">
       <th>WAVE form Registration Number (hex)</th>
       <th>Codec ID in the IANA Namespace</th>
       <th>WAVE form wFormatTag ID</th>
       <th>WAVEFORMAT Use</th>
       <th>WAVEFORMAT Name</th>
       <th>WAVEFORMAT Description</th>
       <th>Additional Information</th>
      </xsl:when>
      <xsl:when test="@id = 'wave-avi-codec-registry-3'">
       <th>Compression Code or FourCC Codec ID</th>
       <th>Codec ID in the IANA Namespace</th>
       <th>Description</th>
       <th>Bit Depth</th>
      </xsl:when>
    </xsl:choose>
       <th>Contact</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
     <tr>
       <td><xsl:value-of select="iana:index"/></td>
       <td><xsl:value-of select="iana:name"/></td>
    <xsl:choose>
       <xsl:when test="../@id = 'wave-avi-codec-registry-2'">
       <td><xsl:value-of select="iana:reg_num"/></td>
       <td><xsl:value-of select="iana:codec_id"/></td>
       <td><xsl:value-of select="iana:wformattag_id"/></td>
       <td><xsl:value-of select="iana:wave_use"/></td>
       <td><xsl:value-of select="iana:wave_name"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:note"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'wave-avi-codec-registry-3'">
       <td><xsl:value-of select="iana:code"/></td>
       <td><xsl:value-of select="iana:codec_id"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:bit_depth"/></td>
      </xsl:when>
    </xsl:choose>
       <td><pre><xsl:value-of select="iana:contact"/></pre></td>
     </tr>
  </xsl:template>
</xsl:stylesheet>
