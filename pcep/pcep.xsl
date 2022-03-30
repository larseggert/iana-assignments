<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:import href="../_support/iana-registry.xsl"/>
  
  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'pcep-objects'">
        <tr>
          <th>Object-Class Value</th>
          <th>Name</th>
          <th>Object-Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'notification-object'">
        <tr>
          <th>Notification-type</th>
          <th>Name</th>
          <th>Notification-value</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'pcep-error-object'">
        <tr>
          <th>Error-Type</th>
          <th>Meaning</th>
          <th>Error-value</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'pcep-message-common-header'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'open-object-flag-field'
        or @id = 'wa-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'rp-object'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'no-path-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'metric-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'lspa-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'svec-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'notification-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'pcep-error-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'load-balancing-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'close-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'xro-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>      
      <xsl:when test="@id = 'of'">
        <tr><th>Code Point</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'no-path-vector-tlv'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'monitoring-object'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'proc-time-object'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'overload-object'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'bu-object-type-field'
        or @id = 'association-type-field'
        or @id = 'auto-bandwidth-attributes-sub-tlv'">
        <tr>
          <th>Type</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'inter-layer-object-path-property-bits'">
        <tr>
          <th>Bit</th>
          <th>Flag</th>
          <th>Multi-Layer Path Property</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'lsp-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'generalized-endpoint-type'">
        <tr>
          <th>Value</th>
          <th>Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'stateful-pce-capability-tlv'
        or @id = 'sr-ero-flag-field'
        or @id = 'sr-capability-flag-field'
        or @id = 'wavelength-allocation-tlv-flag-field'
        or @id = 's2ls-object-flag-field'
        or @id = 'h-pce-capability-tlv-flag-field'
        or @id = 'h-pce-flag-tlv-flag-field'
        or @id = 'association-flag-field'
        or @id = 'auto-bandwidth-capability-tlv-flag-field'
        or @id = 'te-path-binding-tlv-flags'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'lsp-error-code-tlv-error-code-field'
        or @id = 'path-setup-type-capability-sub-tlv-type-indicators'
        or @id = 'wavelength-restriction-constraint-tlv-action-values'
        or @id = 'domain-id-tlv-domain-type'">
        <tr>
          <th>Value</th>
          <th>Meaning</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'path-protection-association-group-tlv-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'disjointness-configuration-tlv-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'gmpls-capability-tlv-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Capability Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'schedule-tlvs-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'flowspec-object-flag-field'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'flow-specification-tlv-type-indicators'">
        <tr>
          <th>Value</th>
          <th>Meaning</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'bidirectional-lsp-association-group'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'pcecc-capability'">
        <tr>
          <th>Bit</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'cci-object-flag-field-mpls-label'">
        <tr>
          <th>Bit</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'pcep-objects'">
        <tr>
          <xsl:choose>
            <xsl:when test="string(preceding-sibling::iana:record[1]/iana:class-value) = string(iana:class-value)">
              <td/>
              <td/>
              <td><xsl:value-of select="iana:type-value"/><xsl:if test="normalize-space(iana:type-description)">: <xsl:value-of select="iana:type-description"/></xsl:if></td>
              <td><xsl:apply-templates select="iana:xref"/></td>
            </xsl:when>
            <xsl:otherwise>
              <td align="center"><xsl:value-of select="iana:class-value"/></td>
              <td><xsl:value-of select="iana:class-description"/></td>
              <td><xsl:value-of select="iana:type-value"/><xsl:if test="normalize-space(iana:type-description)">: <xsl:value-of select="iana:type-description"/></xsl:if></td>
              <td><xsl:apply-templates select="iana:xref"/></td>
            </xsl:otherwise>
          </xsl:choose>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'notification-object' or ../@id = 'pcep-error-object'">
        <tr>
          <xsl:choose>
            <xsl:when test="string(preceding-sibling::iana:record[1]/iana:type-value) = string(iana:type-value)">
              <td/>
              <td/>
              <td><xsl:value-of select="iana:value-value"/><xsl:if test="normalize-space(iana:value-description)">: <xsl:value-of select="iana:value-description"/></xsl:if></td>
              <td><xsl:apply-templates select="iana:xref"/></td>
            </xsl:when>
            <xsl:otherwise>
              <td align="center"><xsl:value-of select="iana:type-value"/></td>
              <td><xsl:value-of select="iana:type-description"/></td>
              <td><xsl:value-of select="iana:value-value"/><xsl:if test="normalize-space(iana:value-description)">: <xsl:value-of select="iana:value-description"/></xsl:if></td>
              <td><xsl:apply-templates select="iana:xref"/></td>
            </xsl:otherwise>
          </xsl:choose>
        </tr>
      </xsl:when>    
      <xsl:when test="../@id = 'of'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'inter-layer-object-path-property-bits'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:flag"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'generalized-endpoint-type'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'flow-specification-tlv-type-indicators'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:meaning"/></td>
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
