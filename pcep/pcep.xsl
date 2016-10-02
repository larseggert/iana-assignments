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
      <xsl:when test="@id = 'open-object-flag-field'">
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
      <xsl:when test="@id = 'bu-object-type-field'">
        <tr>
          <th>Type</th>
          <th>Name</th>
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
