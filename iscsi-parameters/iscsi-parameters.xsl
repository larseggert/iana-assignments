<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'iscsi-parameters-1'">
        <tr>
          <th>Number</th>
          <th>Authentication Method</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iscsi-parameters-2'">
        <tr>
          <th>Number</th>
          <th>Digest</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iscsi-parameters-4'">
        <tr>
          <th>Key Value</th>
          <th>Group Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iscsi-parameters-5'">
        <tr>
          <th>Opcode</th>
          <th>Originator</th>
          <th>Operation Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iscsi-parameters-6'">
        <tr>
          <th>Key</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iscsi-parameters-7'">
        <tr>
          <th>Event Number<br/>(one octet)</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iscsi-parameters-8'">
        <tr>
          <th>TMF Code<br/>(7 bits)</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iscsi-parameters-9'">
        <tr>
          <th>Status Class<br/>(one octet)</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iscsi-parameters-10' or
                      @id = 'iscsi-parameters-11' or
                      @id = 'iscsi-parameters-12' or
                      @id = 'iscsi-parameters-13'">
        <tr>
          <th>Status Class<br/>(fixed)</th>
          <th>Status Code<br/>(one octet)</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'iscsi-parameters-14'">
        <tr>
          <th>Reason Code<br/>(one octet)</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'protocol-level' or
        @id = 'iscsi-parameters-15'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'management-function-response'">
        <tr>
          <th>Value</th>
          <th>Operation Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'iscsi-parameters-5'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td align="center"><xsl:value-of select="iana:originator"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'iscsi-parameters-6'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'iscsi-parameters-9'">
        <tr>
          <td align="center"><xsl:value-of select="iana:class"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'iscsi-parameters-10' or
                      ../@id = 'iscsi-parameters-11' or
                      ../@id = 'iscsi-parameters-12' or
                      ../@id = 'iscsi-parameters-13'">
        <tr>
          <td align="center"><xsl:value-of select="iana:class"/></td>
          <td align="center"><xsl:value-of select="iana:code"/></td>
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
