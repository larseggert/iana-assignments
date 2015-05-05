<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'mobility-parameters-1'
                   or @id = 'mobility-parameters-2'
                   or @id = 'mobility-parameters-3'
                   or @id = 'mobility-parameters-4'
                   or @id = 'mobility-parameters-5'
                   or @id = 'mobility-parameters-6'
                   or @id = 'mobility-parameters-7'
                   or @id = 'mobility-parameters-8'
                   or @id = 'mobility-parameters-9'
                   or @id = 'binding-revocation-type'
                   or @id = 'revocation-trigger-values'
                   or @id = 'binding-revocation-status-codes'
                   or @id = 'home-address-reply'
                   or @id = 'flow-id'
                   or @id = 'flow-id-suboptions'
                   or @id = 'traffic-selector'
                   or @id = 'mobile-node-group-id-type'
                   or @id = 'dsmip6-tls-packet-types'
                   or @id = 'dhcp-support-mode'
                   or @id = 'ani'
                   or @id = 'upn-reasons'
                   or @id = 'upa-status'
                   or @id = 'flow-binding-type'
                   or @id = 'flow-binding-indication-triggers'
                   or @id = 'flow-binding-ack-status'
                   or @id = 'flow-binding-action'
                   or @id = 'op-id'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'mobility-parameters-10'">
        <tr><th>Value</th><th>Description</th><th>Reference</th><th>Registration Date</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'mobility-parameters-11'
                   or @id = 'mobility-parameters-12'">
        <tr><th>Flag</th><th>Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'dsmipv6-home-address-option'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'handover-initiate-flags'
             or @id = 'handover-acknowledge-flags'">
        <tr><th>Flag</th><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'handover-initiate-status'
               or @id = 'handover-acknowledge-status'">
        <tr><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'mobility-parameters-1'
                   or ../@id = 'mobility-parameters-2'
                   or ../@id = 'mobility-parameters-3'
                   or ../@id = 'mobility-parameters-4'
                   or ../@id = 'mobility-parameters-5'
                   or ../@id = 'mobility-parameters-6'
                   or ../@id = 'mobility-parameters-7'
                   or ../@id = 'mobility-parameters-8'
                   or ../@id = 'mobility-parameters-9'
                   or ../@id = 'binding-revocation-type'
                   or ../@id = 'revocation-trigger-values'
                   or ../@id = 'binding-revocation-status-codes'
                   or ../@id = 'home-address-reply'
                   or ../@id = 'dhcp-support-mode'
                   or ../@id = 'dsmipv6-home-address-option'
                   or ../@id = 'handover-initiate-status'
                   or ../@id = 'flow-id'
                   or ../@id = 'flow-id-suboptions'
                   or ../@id = 'traffic-selector'
                   or ../@id = 'mobile-node-group-id-type'
                   or ../@id = 'dsmip6-tls-packet-types'
                   or ../@id = 'handover-acknowledge-status'
                   or ../@id = 'ani'
                   or ../@id = 'upn-reasons'
                   or ../@id = 'upa-status'
                   or ../@id = 'flow-binding-type'
                   or ../@id = 'flow-binding-indication-triggers'
                   or ../@id = 'flow-binding-ack-status'
                   or ../@id = 'flow-binding-action'
                   or ../@id = 'op-id'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mobility-parameters-10'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="@date"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mobility-parameters-11'
                   or ../@id = 'mobility-parameters-12'">
        <tr>
          <td align="center"><xsl:value-of select="iana:flag"/></td>
          <td align="center" style="font-family:monospace"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'handover-initiate-flags'
        or ../@id = 'handover-acknowledge-flags'">
        <tr>
          <td align="center"><xsl:value-of select="iana:flag"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
