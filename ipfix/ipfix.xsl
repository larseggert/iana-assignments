<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'ipfix-information-elements'">
        <tr>
          <th>ElementID</th>
          <th>Name</th>
          <th>Abstract Data Type</th>
          <th>Data Type Semantics</th>
          <th>Status</th>
          <th>Description</th>
          <th>Units</th>
          <th>Range</th>
          <th>References</th>
          <th>Requester</th>
          <th>Revision</th>
          <th>Date</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-mpls-label-type'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'forwarding-status-00b'">
        <tr><th>Binary</th><th>Hex</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'forwarding-status-01b'">
        <tr><th>Binary</th><th>Hex</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'forwarding-status-10b'">
        <tr><th>Binary</th><th>Hex</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'forwarding-status-11b'">
        <tr><th>Binary</th><th>Hex</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'classification-engine-ids'">
        <tr><th>Value</th><th>Description</th><th>Default Length</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-nat-event-type'">
        <tr><th>Value</th><th>Event Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-flowselectoralgorithm'">
        <tr><th>ID</th><th>Technique</th><th>Parameters</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-nat-quota-exceeded-event'">
        <tr><th>Value</th><th>Quota Exceeded Event Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-nat-threshold-event'">
        <tr><th>Value</th><th>Threshold Exceeded Event Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-version-numbers'">
        <tr><th>Value</th><th>Version</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-set-ids'">
        <tr><th>Value</th><th>Set Identifier</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-information-element-data-types'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-information-element-semantics'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-information-element-units'">
        <tr><th>Value</th><th>Name</th><th>Notes</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ipfix-structured-data-types-semantics'">
        <tr><th>Value</th><th>Name</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ipfix-information-elements'">
        <tr>
          <td align="center"><xsl:value-of select="iana:elementId"/></td>
              <td><xsl:value-of select="iana:name"/></td>
              <td><xsl:value-of select="iana:dataType"/></td>
              <td><xsl:value-of select="iana:dataTypeSemantics"/></td>
              <td><xsl:value-of select="iana:status"/></td>
              <td>
                <xsl:for-each select="iana:description/iana:paragraph | iana:description/iana:artwork">
                  <xsl:choose>
                    <xsl:when test="local-name(.) = 'artwork'">
                      <pre><xsl:value-of select="."/></pre>
                    </xsl:when>
                    <xsl:otherwise>
                      <p><xsl:apply-templates select="."/></p>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:for-each>
              </td>
              <td><xsl:value-of select="iana:units"/></td>
              <td><xsl:value-of select="iana:range"/></td>
              <td>
                <xsl:for-each select="iana:references/iana:paragraph">
                  <p style="min-width:30em"><xsl:apply-templates select="."/></p>
                </xsl:for-each>
              </td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:revision"/></td>
          <td><xsl:apply-templates select="iana:date"/></td>
        </tr>
      </xsl:when>
      
      
      <xsl:when test="../@id = 'ipfix-mpls-label-type'
        or ../@id = 'ipfix-version-numbers'
                   or ../@id = 'ipfix-set-ids'
                   or ../@id = 'ipfix-information-element-data-types'
                   or ../@id = 'ipfix-information-element-semantics'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'forwarding-status-00b'
        or ../@id = 'forwarding-status-01b'
        or ../@id = 'forwarding-status-10b'
        or ../@id = 'forwarding-status-11b'">
        <tr>
          <td align="center"><xsl:value-of select="iana:binary-value"/></td>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'classification-engine-ids'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:value-of select="iana:length"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'ipfix-flowselectoralgorithm'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:parameters"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'ipfix-information-element-units'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:value-of select="iana:comments"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'ipfix-structured-data-types-semantics'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
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
