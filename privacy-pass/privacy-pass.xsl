<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'token-type'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Token Structure</th>
          <th>Token Key Encoding</th>
          <th>TokenChallenge Structure</th>
          <th>Publicly Verifiable</th>
          <th>Public Metadata</th>
          <th>Private Metadata</th>
          <th>Nk</th>
          <th>Nid</th>
          <th>Change Controller</th>
          <th>Reference</th>
          <th>Notes</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'token-type'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:structure"/></td>
          <td><xsl:apply-templates select="iana:encoding"/></td>
          <td><xsl:apply-templates select="iana:challenge"/></td>
          <td><xsl:apply-templates select="iana:verifiable"/></td>
          <td><xsl:apply-templates select="iana:public"/></td>
          <td><xsl:apply-templates select="iana:private"/></td>
          <td><xsl:apply-templates select="iana:nk"/></td>
          <td><xsl:apply-templates select="iana:nid"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:comment"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
