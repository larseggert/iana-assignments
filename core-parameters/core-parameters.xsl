<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'rt-link-target-att-value'">
        <tr><th>Value</th><th>Description</th><th>Reference</th><th>Notes</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'if-link-target-att-value'">
        <tr><th>Value</th><th>Description</th><th>Reference</th><th>Notes</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'codes'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'method-codes'">
        <tr><th>Code</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'response-codes'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'option-numbers'">
        <tr><th>Number</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'content-formats'">
        <tr><th>Media Type</th><th>Encoding</th><th>ID</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'signaling-codes'">
        <tr><th>Code</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'signaling-option-numbers'">
        <tr><th>Applies to</th><th>Number</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      
      <xsl:when test="@id = 'oscore-flag-bits'">
        <tr><th>Bit Position</th><th>Name</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
	  
      <xsl:when test="@id = 'rd-parameters'">
        <tr><th>Name</th><th>Short</th><th>Validity</th><th>Use</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
	  
      <xsl:when test="@id = 'et-rd-parameter-value'">
        <tr><th>Value</th><th>Description</th><th>Reference</th><th>Notes</th></tr>
      </xsl:when>
           
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'rt-link-target-att-value'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:notes"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'if-link-target-att-value'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:notes"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'codes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'method-codes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'response-codes'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'option-numbers'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>

      <xsl:when test="../@id = 'content-formats'">
        <tr>
          <td><xsl:value-of select="iana:mediatype"/></td>
          <td><xsl:value-of select="iana:encoding"/></td>
          <td><xsl:value-of select="iana:id"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'signaling-option-numbers'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:number"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'oscore-flag-bits'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
	  
      <xsl:when test="../@id = 'rd-parameters'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:short"/></td>
		  <td><xsl:apply-templates select="iana:validity"/></td>
		  <td><xsl:value-of select="iana:use"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
	  
      <xsl:when test="../@id = 'et-rd-parameter-value'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:notes"/></td>
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
