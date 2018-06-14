<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
     <tr>
    <xsl:choose>
      <xsl:when test="@id = 'media-type-sub-parameters-1'">
       <th>Modes</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'media-type-sub-parameters-3' or
	              @id = 'media-type-sub-parameters-9'">
       <th>j_sec Value</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'media-type-sub-parameters-4' or
	              @id = 'media-type-sub-parameters-10'">
       <th>j_update Value</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'media-type-sub-parameters-5' or
	              @id = 'media-type-sub-parameters-11'">
       <th>render Value</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'media-type-sub-parameters-6' or
	              @id = 'media-type-sub-parameters-12'">
       <th>subrender Value</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'media-type-sub-parameters-7' or
	              @id = 'media-type-sub-parameters-13'">
       <th>smf_info Value</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'media-type-sub-parameters-15'">
       <th>Color (sub-)sampling</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'media-type-sub-parameters-16'">
       <th>Colorimetry</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'media-type-sub-parameters-17'">
       <th>Format Value</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'smime'">
       <th>smime-type Value</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'cms-encapsulating'">
       <th>Name</th>
        <th>Object Identifier</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'cms-inner'">
       <th>Name</th>
        <th>Object Identifier</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'report-type'">
        <th>Report-Type</th>
        <th>Media Type</th>
        <th>Reference</th>
        <th>Comment</th>
      </xsl:when>
    </xsl:choose>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
  <xsl:choose>
    <xsl:when test="../@id = 'cms-encapsulating' or
                    ../@id = 'cms-inner'">
     <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
     </tr>  
    </xsl:when>
    <xsl:when test="../@id = 'report-type'">
      <tr>
        <td><xsl:value-of select="iana:report-type"/></td>
        <td><xsl:apply-templates select="iana:media-type"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        <td><xsl:apply-templates select="iana:comment"/></td>
      </tr>  
    </xsl:when>
    <xsl:otherwise>
     <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
     </tr>
      </xsl:otherwise>
  </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
