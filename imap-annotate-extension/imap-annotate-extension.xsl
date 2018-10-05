<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'imap-annotate-extension-entries'">
        <tr>
          <th>Entry Name</th>
          <th>Description</th>
          <th>Content-Type</th>
          <th>Contact</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'imap-annotate-extension-attributes'">
        <tr>
          <th>Attribute Name</th>
          <th>Description</th>
          <th>Contact</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'imap-annotate-extension-entries'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:content-type"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'imap-annotate-extension-attributes'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
