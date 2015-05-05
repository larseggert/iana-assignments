<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>
  <xsl:template name="iana:record_header">
    <xsl:choose>
      
     <xsl:when test="@id = 'catypes'">
      <tr>
        <th>CAtype</th>
        <th>Local Name</th>
        <th>Description</th>
        <th>Example</th>
        <th>Namespace URI</th>
        <th>Contact</th>
        <th>Schema</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      
     <xsl:when test="@id = 'rltypes'">
      <tr>
        <th>RLtype</th>
        <th>Description</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      
    </xsl:choose>
  </xsl:template>
  
  
  <xsl:template match="iana:record">
    <xsl:choose>
            
     <xsl:when test="../@id = 'catypes'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td align="center"><xsl:value-of select="iana:localname"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:example"/></td>
        <td><xsl:value-of select="iana:namespaceuri"/></td>
        <td><xsl:apply-templates select="iana:contact"/></td>
        <td><xsl:value-of select="iana:schema"/></td>
        <td><xsl:value-of select="iana:type"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>

     <xsl:when test="../@id = 'rltypes'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>

    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
