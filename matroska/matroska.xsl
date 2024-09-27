<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'matroska-element-ids'">
        <tr>
          <th>Element ID</th>
          <th>Element Name</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-compression-algorithms'">
        <tr>
          <th>Compression Algorithm</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-encryption-algorithms'">
        <tr>
          <th>Encryption Algorithm</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-aes-cipher-modes'">
        <tr>
          <th>AES Cipher Mode</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-content-encoding-scopes'">
        <tr>
          <th>Content Encoding Scope</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-content-encoding-types'">
        <tr>
          <th>Content Encoding Type</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-stereo-modes'">
        <tr>
          <th>Stereo Mode</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-alpha-modes'">
        <tr>
          <th>Alpha Mode</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-display-units'">
        <tr>
          <th>Display Unit</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-horizontal-chroma-sitings'">
        <tr>
          <th>Horizontal Chroma Siting</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-vertical-chroma-sitings'">
        <tr>
          <th>Vertical Chroma Siting</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-color-ranges'">
        <tr>
          <th>Color Range</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-tags-target-types'">
        <tr>
          <th>Tags Target Type</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'matroska-chapter-codec-ids'">
        <tr>
          <th>Chapter Codec ID</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-projection-types'">
        <tr>
          <th>Projection Type</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-track-types'">
        <tr>
          <th>Track Type</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'matroska-track-plane-types'">
        <tr>
          <th>Track Plane Type</th>
          <th>Description</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'matroska-element-ids'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:ref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:ref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
