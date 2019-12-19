<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      <xsl:when test="@id = 'extension-name'">
        <tr>
          <th>Extension Identifier</th>
          <th>Extension Common Name</th>
          <th>Extension Definition</th>
          <th>Known Incompatible Extensions</th>
          <th>Reference</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'subprotocol-name'">
        <tr>
          <th>Subprotocol Identifier</th>
          <th>Subprotocol Common Name</th>
          <th>Subprotocol Definition</th>
          <th>Reference</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
      
      <xsl:when test="@id = 'version-number'">
        <tr>
          <th>Version Number</th>
          <th>Reference</th>
          <th>Status</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'close-code-number'">
        <tr>
          <th>Status Code</th>
          <th>Meaning</th>
          <th>Contact</th>
          <th>Reference</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'opcode'">
        <tr>
          <th>Opcode</th>
          <th>Meaning</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'framing-header-bits'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'extension-name'">
        <tr>
          <td><xsl:value-of select="iana:id"/></td>
          <td><xsl:value-of select="iana:common"/></td>
          <td><xsl:apply-templates select="iana:definition"/></td>
          <td><xsl:value-of select="iana:incompatible"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'subprotocol-name'">
        <tr>
          <td><xsl:value-of select="iana:id"/></td>
          <td><xsl:value-of select="iana:common"/></td>
          <td><xsl:apply-templates select="iana:definition"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'version-number'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'close-code-number'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:contact/iana:xref"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'opcode'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'framing-header-bits'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
 
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
