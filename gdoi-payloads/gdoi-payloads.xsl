<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'gdoi-payloads-1'">
      <tr>
        <th>Value</th>
        <th>ID Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-3'">
      <tr>
        <th>Value</th>
        <th>Algorithm Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-4'">
      <tr>
        <th>Value</th>
        <th>ID Class</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-5'">
      <tr>
        <th>Value</th>
        <th>KEK Management Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-6'">
      <tr>
        <th>Value</th>
        <th>Algorithm Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-7'">
      <tr>
        <th>Value</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-8'">
      <tr>
        <th>Value</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-9'">
      <tr>
        <th>Value</th>
        <th>Algorithm Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-10'">
      <tr>
        <th>Value</th>
        <th>Algorithm Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-11'">
      <tr>
        <th>Value</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-12'">
      <tr>
        <th>Value</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      <xsl:when test="@id = 'gdoi-payloads-kek-ack-requested'">
        <tr>
          <th>Value</th>
          <th>Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when> 
     <xsl:when test="@id = 'gdoi-payloads-14'">
      <tr>
        <th>Value</th>
        <th>Protocol ID</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-15'">
      <tr>
        <th>Value</th>
        <th>Key Download Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-16'">
      <tr>
        <th>Value</th>
        <th>TEK Class</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-17'">
      <tr>
        <th>Value</th>
        <th>KEK Class</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-18'">
      <tr>
        <th>Value</th>
        <th>KEK Class</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-19'">
      <tr>
        <th>Value</th>
        <th>SID Class</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'gdoi-payloads-20'">
      <tr>
        <th>Value</th>
        <th>Attribute Type</th>
        <th>Type</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      <xsl:when test="@id = 'iec62351-9-confidentiality-values'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Authenticated Encryption</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'gdoi-sa-tek-attributes'">
        <tr>
          <th>Value</th>
          <th>Attribute</th>
          <th>Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'id-types'">
        <tr>
          <th>Value</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
        </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Value</th>
          <th>Phase</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'gdoi-payloads-4' or
                      ../@id = 'gdoi-payloads-16' or
                      ../@id = 'gdoi-payloads-17' or
                      ../@id = 'gdoi-payloads-18' or
                      ../@id = 'gdoi-payloads-19' or
                      ../@id = 'gdoi-payloads-20'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:type"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
      <xsl:when test="../@id = 'iec62351-9-confidentiality-values'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:encryption"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'gdoi-sa-tek-attributes'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:type"/></td>
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
