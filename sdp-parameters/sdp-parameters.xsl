<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
     <tr>
    <xsl:choose>
      <xsl:when test="@id = 'sdp-parameters-1' or
		      @id = 'sdp-parameters-2' or
		      @id = 'sdp-parameters-3' or
		      @id = 'sdp-parameters-4' or
		      @id = 'sdp-parameters-5' or
		      @id = 'sdp-parameters-6' or
		      @id = 'sdp-parameters-7' or
		      @id = 'sdp-parameters-8' or
		      @id = 'sdp-parameters-9' or
		      @id = 'sdp-parameters-10' or
		      @id = 'sdp-parameters-11'">
       <th>Type</th>
       <th>SDP Name</th>
       <th>Reference</th>
      </xsl:when>
     
      <xsl:when test="@id = 'sdp-parameters-12'">
       <th>Type</th>
       <th>SDP Name</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
     
      <xsl:when test="@id = 'sdp-parameters-13'">
       <th>Semantics</th>
       <th>Token</th>
       <th>Reference</th>
      </xsl:when>

      <xsl:when test="@id = 'cs-correlation-values'">
       <th>Value</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>

      <xsl:when test="@id = 'sdp-parameters-16' or
           	      @id = 'sdp-parameters-17'">
       <th>Token</th>
       <th>Semantics</th>
       <th>Reference</th>
      </xsl:when>

      <xsl:when test="@id = 'sdp-parameters-14' or
		      @id = 'sdp-parameters-16' or
		      @id = 'sdp-parameters-18'">
       <th>Value Name</th>
       <th>Long Name</th>
       <th>Reference</th>
      </xsl:when>
     
      <xsl:when test="@id = 'sdp-parameters-15' or
		      @id = 'sdp-parameters-19'">
       <th>Value Name</th>
       <th>Long Name</th>
       <th>Usable with</th>
       <th>Reference</th>
      </xsl:when>
     
      <xsl:when test="@id = 'sdp-parameters-20'">
       <th>QoS Mechanism</th><th>Reference</th>
      </xsl:when>
     
      <xsl:when test="@id = 'sdp-parameters-21'">
       <th>Option Tag</th><th>Reference</th>
      </xsl:when>
     
      <xsl:when test="@id = 'sdp-parameters-22'">
       <th>Encoding Name</th>
       <th>Descriptive Name</th>
       <th>Potential Configuration Definition</th>
       <th>Actual Configuration Definition</th>
       <th>Latent Configuration Definition</th>
      </xsl:when>
     
     <xsl:when test="@id = 'timestamp-ref-clock-source' or 
		      @id = 'media-clock-source'">
       <th>Name</th>
       <th>Long Name</th>
       <th>Reference</th>
      </xsl:when>
     
    </xsl:choose>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
     <tr>
    <xsl:choose>
       <xsl:when test="../@id = 'sdp-parameters-1' or
                       ../@id = 'sdp-parameters-2' or
                       ../@id = 'sdp-parameters-3' or
                       ../@id = 'sdp-parameters-4' or
                       ../@id = 'sdp-parameters-5' or
                       ../@id = 'sdp-parameters-6' or
                       ../@id = 'sdp-parameters-7' or
                       ../@id = 'sdp-parameters-8' or
                       ../@id = 'sdp-parameters-9' or
                       ../@id = 'sdp-parameters-10' or
                       ../@id = 'sdp-parameters-11'">
       <td><xsl:value-of select="iana:type"/></td>
       <td><xsl:value-of select="iana:name"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'sdp-parameters-12'">
       <td><xsl:value-of select="iana:type"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'sdp-parameters-13'">
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>      
     <xsl:when test="../@id = 'cs-correlation-values'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'sdp-parameters-14' or
                       ../@id = 'sdp-parameters-16' or
                       ../@id = 'sdp-parameters-17' or
                       ../@id = 'sdp-parameters-18'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'sdp-parameters-15' or
                       ../@id = 'sdp-parameters-19'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:usage"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'sdp-parameters-20' or
                       ../@id = 'sdp-parameters-21'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'sdp-parameters-22'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:potential"/></td>
       <td><xsl:apply-templates select="iana:actual"/></td>
       <td><xsl:apply-templates select="iana:latent"/></td>
      </xsl:when>
     <xsl:otherwise>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:otherwise>
    </xsl:choose>
     </tr>
  </xsl:template>
</xsl:stylesheet>
