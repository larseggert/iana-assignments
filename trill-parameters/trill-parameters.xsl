<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'trill-parameters-1'">
        <tr><th>Name</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'trill-parameters-2'">
        <tr><th>Address</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'extended-header-flags'">
        <tr><th>Bits</th><th>Purpose</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rbridge-channel-protocol'">
        <tr><th>Protocol</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'extended-rbridge-channel-payload-types'">
        <tr><th>PType</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'extended-rbridge-channel-security-types'">
        <tr><th>SType</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rbridge-channel-header-flags'">
        <tr><th>Flag Bit</th><th>Menemonic</th><th>Allocation</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rbridge-channel-error-codes'">
        <tr><th>Value</th><th>RBridge Channel Error Code Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'rbridge-channel-suberror-codes'">
        <tr><th>Err</th><th>SubERR</th><th>Meaning</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'trill-ver-capability'">
        <tr><th>Bit</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'port-trill-ver-capability'">
        <tr><th>Bit</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'neighbor-record-flags'">
        <tr><th>Bit</th><th>Short Name</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'interested-vlans-flags'">
        <tr><th>Bit</th><th>Menemonic</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'interested-labels-flags'">
        <tr><th>Bit</th><th>Menemonic</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'isis-tlv-251-app-id-1'">
        <tr><th>Type</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'nickflags-bits'">
        <tr><th>Bit</th><th>Mnemonic</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ia-appsub-tlv-sub-sub-tlvs'">
        <tr><th>Type</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'extended-rbridge-capabilities'">
        <tr><th>Bit</th><th>Mnemonic</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'trill-oam-return-codes'">
        <tr><th>Return Code</th><th>Assignment</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'trill-oam-return-sub-code-0'">
        <tr><th>Sub Code</th><th>Assignment</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'trill-oam-return-sub-code-1'">
        <tr><th>Sub Code</th><th>Assignment</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'trill-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:profile"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'trill-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:algorithm"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'extended-header-flags'">
        <tr>
          <td align="center"><xsl:value-of select="iana:bits"/></td>
          <td><xsl:value-of select="iana:purpose"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'rbridge-channel-protocol'">
        <tr>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rbridge-channel-header-flags'">
        <tr>
          <td align="center"><xsl:value-of select="iana:bit"/></td>
          <td><xsl:value-of select="iana:mnemonic"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rbridge-channel-error-codes'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'rbridge-channel-suberror-codes'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td align="center"><xsl:value-of select="iana:subvalue"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'neighbor-record-flags'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'interested-vlans-flags'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'interested-labels-flags'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'nickflags-bits'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:mnemonic"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'extended-rbridge-capabilities'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:mnemonic"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
