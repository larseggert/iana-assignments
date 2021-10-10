<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'eap-noob-cryptosuites'">
        <tr>
        <th>Cryptosuite</th>
        <th>Algorithms</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-noob-message-types'">
        <tr>
        <th>Message Type</th>
        <th>Used in Exchange</th>
        <th>Purpose</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-noob-error-codes'">
        <tr>
        <th>Error Code</th>
        <th>Purpose</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-noob-serverinfo-data-fields'">
        <tr>
        <th>Data Field</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'eap-noob-peerinfo-data-fields'">
        <tr>
        <th>Data Field</th>
        <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'eap-noob-cryptosuites'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-noob-message-types'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:value-of select="iana:exchange"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-noob-error-codes'">
        <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-noob-serverinfo-data-fields'">
        <tr>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'eap-noob-peerinfo-data-fields'">
        <tr>
        <td><xsl:apply-templates select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
