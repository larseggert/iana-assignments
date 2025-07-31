<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'smtp-service-extensions'">
        <tr>
          <th>EHLO Keyword</th>
          <th>Description</th>
          <th>Reference</th>
          <th>EHLO Parameters</th>
          <th>Additional Verbs</th>
          <th>MAIL/RCPT Parameter Values</th>
          <th>RegMethod</th>
          <th>Message Submission Use and Values</th>
          <th>Length Added</th>
          <th>Note</th>
          <th>Contact</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'smtp-via-link-types'">
        <tr>
          <th>VIA link types</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'smtp-with-protocol-types'">
        <tr>
          <th>WITH protocol types</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'smtp-additional-registered-received-clauses'">
        <tr>
          <th>Clause Name</th>
          <th>Service Extension</th>
          <th>Description</th>
          <th>Syntax Summary</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'address-literal-tags'">
        <tr>
          <th>Tag</th>
          <th>Reference</th>
        </tr>
        </xsl:when>
      <xsl:when test="@id = 'smtp-priority'">
        <tr>
          <th>Policy Name</th>
          <th>Comment</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'smtp-registered-states'">
        <tr>
          <th>Name</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Use</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'multicast-email-smtp-extensions'">
        <tr>
          <th>Name</th>
          <th>Status</th>
          <th>Multicast-Mail-Specific References</th>
          <th>Non-Multicast-Specific References</th>
          <th>Note</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'smtp-server-limits'">
        <tr>
          <th>Name</th>
          <th>Value syntax</th>
          <th>Description</th>
          <th>Restrictions</th>
          <th>Security Considerations</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mail-header-confidentiality-policies'">
        <tr>
          <th>Header Confidentiality Policy Name</th>
          <th>Description</th>
          <th>Recommended</th>
          <th>Reference</th>
        </tr>
        </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'smtp-via-link-types' or
                      ../@id = 'smtp-with-protocol-types' or
                      ../@id = 'smtp-priority'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'smtp-service-extensions'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:ehlo-param"/></td>
          <td><xsl:apply-templates select="iana:verbs"/></td>
          <td><xsl:apply-templates select="iana:mail-rcpt"/></td>
          <td><xsl:apply-templates select="iana:reg"/></td>
          <td><xsl:apply-templates select="iana:submission"/></td>
          <td><xsl:apply-templates select="iana:length-added"/></td>
          <td><xsl:apply-templates select="iana:note"/></td>
          <td><xsl:apply-templates select="iana:contact"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'smtp-additional-registered-received-clauses'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:extension"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:syntax"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'address-literal-tags'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:reference"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'smtp-registered-states'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:use"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'multicast-email-smtp-extensions'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:multicast-ref"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:note"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'smtp-server-limits'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:syntax"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:restriction"/></td>
          <td><xsl:apply-templates select="iana:security"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mail-header-confidentiality-policies'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:recommended"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="iana:registryempty"/>
</xsl:stylesheet>
