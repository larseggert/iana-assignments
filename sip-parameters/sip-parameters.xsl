<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
     <tr>
    <xsl:choose>
      
      <xsl:when test="@id = 'sip-parameters-2'">
       <th>Header Name</th>
       <th>compact</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-3'">
        <th>Protocol value</th>
        <th>Protocol Cause</th>
        <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-4'">
       <th>Name</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-5'">
       <th>Code</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-6'">
       <th>Methods</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-7'">
       <th>Response Code</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-8'">
       <th>Privacy Type</th>
       <th>Description</th>
       <th>Registrant</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-9'">
       <th>Mechanism Name</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-10'">
       <th>Compression Scheme</th>
       <th>Token</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-11'">
       <th>Parameter Name</th>
       <th>Predefined Values</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-12'">
       <th>Header Field</th>
       <th>Parameter Name</th>
       <th>Predefined Values</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-13'">
       <th>Value</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-14'">
       <th>Namespace</th>
       <th>Namespace Numerical Value</th>
       <th>Levels</th>
       <th>Algorithm</th>
       <th>Intended Code</th>
       <th>New warn-code</th>
       <th>New resp. Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-61'">
       <th>Parameter Name</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-62'">
       <th>'alg' Parameter Name</th>
       <th>Reference</th>
      </xsl:when>
      
      <xsl:when test="@id = 'sip-parameters-64'">
       <th>Parameter Name</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-65'">
       <th>Service/Application</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-66'">
       <th>Name</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-67'">
       <th>Profile Type</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-68'">
       <th>Code</th>
       <th>Default Reason Phrase</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-69' or @id = 'sip-parameters-73'">
       <th>Reason Code</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-70'">
       <th>Leading Facet</th>
       <th>Feature-Capability Indicator Tree</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sip-parameters-71' or @id = 'sip-parameters-72'">
       <th>Name</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
     <xsl:when test="@id = 'sip-transport'">
       <th>Transport</th>
       <th>Reference</th>
      </xsl:when>
     <xsl:when test="@id = 'uui-packages'">
       <th>Package</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
     <xsl:when test="@id = 'uui-content'">
       <th>Content</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
     <xsl:when test="@id = 'uui-encoding'">
       <th>Encoding</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:otherwise>
       <th>Priority-Values (least to greatest)</th>
       <th>Priority Numerical Value</th>
      </xsl:otherwise>
    </xsl:choose>
    </tr>
  </xsl:template>


  <xsl:template match="iana:record">
     <tr>
    <xsl:choose>
      
      <xsl:when test="../@id = 'sip-parameters-2'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:compact"/></td>
       <td><xsl:apply-templates select="iana:spec"/></td>
      </xsl:when>
     
      <xsl:when test="../@id = 'sip-parameters-3' 
       or ../@id = 'sip-parameters-4' 
       or ../@id = 'sip-parameters-5' 
       or ../@id = 'sip-parameters-7' 
       or ../@id = 'sip-parameters-13' 
       or ../@id = 'sip-parameters-64' 
       or ../@id = 'sip-parameters-65' 
       or ../@id = 'sip-parameters-68' 
       or ../@id = 'sip-parameters-70' 
       or ../@id = 'sip-parameters-71' 
       or ../@id = 'uui-packages'
       or ../@id = 'uui-content'
       or ../@id = 'uui-encoding'
       or ../@id = 'sip-parameters-72'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
     
      <xsl:when test="../@id = 'sip-parameters-6' 
       or ../@id = 'sip-parameters-9' 
       or ../@id = 'sip-parameters-61' 
       or ../@id = 'sip-parameters-62' 
       or ../@id = 'sip-parameters-66' 
       or ../@id = 'sip-parameters-67' 
       or ../@id = 'sip-parameters-69' 
       or ../@id = 'sip-parameters-73'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
     
      <xsl:when test="../@id = 'sip-parameters-8'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:registrant"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
     
      <xsl:when test="../@id = 'sip-parameters-10'">
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
     
      <xsl:when test="../@id = 'sip-parameters-11'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:predefined"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
     
      <xsl:when test="../@id = 'sip-parameters-12'">
       <td><xsl:value-of select="iana:header_field"/></td>
       <td><xsl:apply-templates select="iana:value"/></td>
       <td><xsl:value-of select="iana:predefined"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
     
      <xsl:when test="../@id = 'sip-parameters-14'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:level"/></td>
       <td><xsl:value-of select="iana:algorithm"/></td>
       <td><xsl:value-of select="iana:intended_code"/></td>
       <td><xsl:value-of select="iana:new_warn_code"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
     
     <xsl:when test="../@id = 'sip-transport'">
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
     
      <xsl:otherwise>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:value"/></td>
      </xsl:otherwise>
     
    </xsl:choose>
     </tr>
  </xsl:template>
</xsl:stylesheet>
