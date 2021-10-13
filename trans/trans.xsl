<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'trans-hash-algorithms'">
        <tr>
        <th>Value</th>
        <th>Hash Algorithm</th>
        <th>OID</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'trans-signature-algorithms'">
        <tr>
        <th>SignatureScheme Value</th>
        <th>Signature Algorithm</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'trans-versionedtranstype'">
        <tr>
        <th>Value</th>
        <th>Type and Version</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'trans-log-artifact-extensions'">
        <tr>
        <th>ExtensionType</th>
        <th>Status</th>
        <th>Use</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'trans-log-ids'">
        <tr>
        <th>Log ID</th>
        <th>Log Base URL</th>
        <th>Log Operator</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'trans-error-types'">
        <tr>
        <th>Identifier</th>
        <th>Meaning</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'trans-hash-algorithms'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:algorithm"/></td>
        <td><xsl:apply-templates select="iana:oid"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'trans-signature-algorithms'">
        <tr>
        <td><xsl:value-of select="iana:signature"/></td>
        <td><xsl:apply-templates select="iana:algorithm"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'trans-versionedtranstype'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:version"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'trans-log-artifact-extensions'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:status"/></td>
        <td><xsl:apply-templates select="iana:use"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'trans-log-ids'">
        <tr>
        <td><xsl:value-of select="iana:id"/></td>
        <td><xsl:apply-templates select="iana:url"/></td>
        <td><xsl:apply-templates select="iana:operator"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'trans-error-types'">
        <tr>
        <td><xsl:value-of select="iana:identifier"/></td>
        <td><xsl:apply-templates select="iana:meaning"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
