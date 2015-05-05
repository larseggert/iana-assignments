<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'ipp-registrations-1' or @id = 'ipp-registrations-10'">
        <tr><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipp-registrations-2'">
        <tr>
          <th>Collection</th>
          <th>Name</th>
          <th>Member Attribute</th>
          <th>Sub-member Attribute</th>
          <th>Syntax</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'ipp-registrations-4'">
        <tr>
         <th>Attribute</th>
         <th>Keyword Value</th>
         <th>Syntax</th>
         <th>Type</th>
         <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ipp-registrations-6'">
        <tr>
         <th>Attribute</th>
         <th>Value</th>
         <th>Name</th>
         <th>Syntax</th>
         <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:otherwise>
        <tr><th>Value</th><th>Name</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ipp-registrations-1' or ../@id = 'ipp-registrations-10'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ipp-registrations-2'">
        <tr>
          <td><xsl:value-of select="iana:collection"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:member_attribute"/></td>
          <td><xsl:value-of select="iana:sub-member_attribute"/></td>
          <td><xsl:value-of select="iana:syntax"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>

      
      <xsl:when test="../@id = 'ipp-registrations-4'">
        <tr>
          <td><xsl:value-of select="iana:attribute"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:syntax"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'ipp-registrations-6'">
        <tr>
          <td><xsl:value-of select="iana:attribute"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:syntax"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>

      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
