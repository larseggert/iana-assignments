<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'tlv-codepoints'">
      <tr>
        <th>Value</th>
        <th>Name</th>
        <th>IIH</th>
        <th>LSP</th>
        <th>SNP</th>
        <th>Purge</th>
        <th>Status/Reference</th>
      </tr>
     </xsl:when>
      
     <xsl:when test="@id = 'isis-tlv-codepoints-10'">
      <tr>
        <th>Value</th>
        <th>Authentication Type Code</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      
     <xsl:when test="@id = 'isis-tlv-codepoints-22-23-25-141-222-223'">
      <tr>
        <th>Type</th>
        <th>Description</th>
        <th>22</th>
        <th>23</th>
        <th>25</th>
        <th>141</th>
        <th>222</th>
        <th>223</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      
      <xsl:when test="@id = 'isis-tlv-codepoints-135-235-236-237'">
      <tr>
        <th>Type</th>
        <th>Description</th>
        <th>135</th>
        <th>235</th>
        <th>236</th>
        <th>237</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      
     <xsl:when test="@id = 'prefix-attribute-flags'">
      <tr>
        <th>Bit #</th>
        <th>Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when> 
      
     <xsl:when test="@id = 'isis-tlv-codepoints-19of22'">
      <tr>
        <th>Value</th>
        <th>Name</th>
      </tr>
     </xsl:when>
     
     <xsl:when test="@id = 'tlv-143'">
      <tr>
       <th>Value</th>
       <th>Group Address Type Code</th>
       <th>Reference</th>
      </tr>
     </xsl:when>
     
     <xsl:when test="@id = 'tlv-144'">
      <tr>
       <th>Value</th>
       <th>Group Address Type Code</th>
       <th>Reference</th>
      </tr>
     </xsl:when>
     
     <xsl:when test="@id = 'isis-tlv-codepoints-242'">
      <tr>
        <th>Value</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      
     <xsl:when test="@id = 'app-ids-251'">
      <tr>
       <th>ID Value</th>
       <th>Description</th>
       <th>Allowed in Instance zero (y/n)</th>
       <th>Reference</th>
      </tr>
     </xsl:when>
      
      <xsl:when test="@id = 'bier-info-sub-tlv'">
        <tr>
          <th>Type</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:otherwise>
       <tr>
        <th>Type</th>
        <th>Description</th>
        <th>Reference</th>
       </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  
  <xsl:template match="iana:record">
    <xsl:choose>
     <xsl:when test="../@id = 'tlv-codepoints'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:IIH"/></td>
       <td><xsl:value-of select="iana:LSP"/></td>
       <td><xsl:value-of select="iana:SNP"/></td>
       <td><xsl:value-of select="iana:purge"/></td>
       <td><xsl:apply-templates select="iana:status"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'isis-tlv-codepoints-10'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:authentication_type_code"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'isis-tlv-codepoints-22-23-25-141-222-223'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:TLV_22"/></td>
        <td><xsl:value-of select="iana:TLV_23"/></td>
        <td><xsl:value-of select="iana:TLV_25"/></td>
       <td><xsl:value-of select="iana:TLV_141"/></td>
       <td><xsl:value-of select="iana:TLV_222"/></td>
        <td><xsl:value-of select="iana:TLV_223"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'isis-tlv-codepoints-19of22'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
      </tr>
     </xsl:when>
      <xsl:when test="../@id = 'isis-tlv-codepoints-135-235-236-237'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:TLV_135"/></td>
        <td><xsl:value-of select="iana:TLV_235"/></td>
       <td><xsl:value-of select="iana:TLV_236"/></td>
       <td><xsl:value-of select="iana:TLV_237"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'isis-tlv-codepoints-242'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'app-ids-251'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:allowed"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
      <xsl:otherwise>
       <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
       </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
