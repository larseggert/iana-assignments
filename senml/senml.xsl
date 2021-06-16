<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'senml-units'">
        <tr>
          <th>Symbol</th>
          <th>Description</th>
          <th>Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'senml-labels'">
        <tr>
          <th>Name</th>
          <th>Label</th>
          <th>CBOR Label</th>
          <th>JSON Type</th>
          <th>XML Type</th>
          <th>EXI ID</th>
          <th>Reference</th>
          <th>Note</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'secondary-units'">
        <tr>
          <th>Secondary Unit</th>
          <th>Description</th>
          <th>SenML Unit</th>
          <th>Scale</th>
          <th>Offset</th>
          <th>Reference</th>
        </tr>
      </xsl:when>

      <xsl:when test="@id = 'senml-features'">
        <tr>
          <th>Feature Code</th>
          <th>Feature Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      
      <xsl:when test="../@id = 'senml-units'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'senml-labels'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:label"/></td>
          <td><xsl:value-of select="iana:cl"/></td>
          <td><xsl:value-of select="iana:json"/></td>
          <td><xsl:value-of select="iana:xml"/></td>
          <td><xsl:value-of select="iana:ei"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:note"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'secondary-units'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:value-of select="iana:unit"/></td>
          <td><xsl:value-of select="iana:scale"/></td>
          <td><xsl:value-of select="iana:offset"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>

      <xsl:when test="../@id = 'senml-features'">
      <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
    </xsl:when>

    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
