<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'mikey-payloads-1' or
                      @id = 'mikey-payloads-7' or
                      @id = 'mikey-payloads-10' or
                      @id = 'mikey-payloads-12' or
                      @id = 'mikey-payloads-14' or
                      @id = 'mikey-payloads-16' or
                      @id = 'mikey-payloads-18' or
                      @id = 'mikey-payloads-21' or
                      @id = 'mikey-payloads-23' or
                      @id = 'mikey-payloads-30' or
                      @id = 'mikey-payloads-32' or
                      @id = 'mikey-payloads-35'">
        <tr>
          <th>Field Name</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-2'">
        <tr>
          <th>Version</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-3'">
        <tr>
          <th>Value</th>
          <th>Data Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-4'">
        <tr>
          <th>Value</th>
          <th>Next Payload</th>
          <th>Section in Document</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-5'">
        <tr>
          <th>Value</th>
          <th>PRF Func</th>
          <th>Section in Document</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-6'">
        <tr>
          <th>Value</th>
          <th>CS ID Map Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-8'">
        <tr>
          <th>Value</th>
          <th>Encr Alg</th>
          <th>Section in Document</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-9'">
        <tr>
          <th>Value</th>
          <th>MAC Alg</th>
          <th>Section in Document</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-11'">
        <tr>
          <th>Value</th>
          <th>Cache Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-13'">
        <tr>
          <th>Value</th>
          <th>DH-Group</th>
          <th>Comments</th>
          <th>DH Value length (bits)</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-15'">
        <tr>
          <th>Value</th>
          <th>S Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-17'">
        <tr>
          <th>Value</th>
          <th>TS Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-19'">
        <tr>
          <th>Value</th>
          <th>ID Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-20'">
        <tr>
          <th>Value</th>
          <th>Cert Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-22'">
        <tr>
          <th>Value</th>
          <th>Hash Func</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-24'">
        <tr>
          <th>Value</th>
          <th>Prot Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-25'">
        <tr>
          <th>SRTP Type</th>
          <th>Meaning</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-26'">
        <tr>
          <th>Value</th>
          <th>SRTP encr alg</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-27'">
        <tr>
          <th>Value</th>
          <th>SRTP auth alg</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-28'">
        <tr>
          <th>Value</th>
          <th>SRTP PRF</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-29'">
        <tr>
          <th>Value</th>
          <th>FEC order</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-31'">
        <tr>
          <th>Value</th>
          <th>Error No</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-33' or
                      @id = 'mikey-payloads-36' or
                      @id = 'mikey-payloads-44'">
        <tr>
          <th>Value</th>
          <th>Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-34'">
        <tr>
          <th>Value</th>
          <th>KV</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-37'">
        <tr>
          <th>Value</th>
          <th>Key ID Type</th>
          <th>Comment</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-38'">
        <tr>
          <th>Value</th>
          <th>OMA BCAST Types</th>
          <th>Comment</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-39'">
        <tr>
          <th>Value</th>
          <th>TS Role</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-40'">
        <tr>
          <th>Value</th>
          <th>ID Role</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-41'">
        <tr>
          <th>Value</th>
          <th>RAND Role</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-42'">
        <tr>
          <th>Value</th>
          <th>Ticket Type</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'mikey-payloads-43'">
        <tr>
          <th>Value</th>
          <th>ECC curve</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'sakke-params'">
        <tr>
          <th>Value</th>
          <th>SAKKE params</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'id-scheme'">
        <tr>
          <th>Value</th>
          <th>ID Scheme</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'mikey-payloads-1' or
                      ../@id = 'mikey-payloads-2' or
                      ../@id = 'mikey-payloads-7' or
                      ../@id = 'mikey-payloads-10' or
                      ../@id = 'mikey-payloads-12' or
                      ../@id = 'mikey-payloads-14' or
                      ../@id = 'mikey-payloads-16' or
                      ../@id = 'mikey-payloads-18' or
                      ../@id = 'mikey-payloads-21' or
                      ../@id = 'mikey-payloads-23' or
                      ../@id = 'mikey-payloads-30' or
                      ../@id = 'mikey-payloads-32' or
                      ../@id = 'mikey-payloads-35'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mikey-payloads-3' or
                      ../@id = 'mikey-payloads-6' or
                      ../@id = 'mikey-payloads-11' or
                      ../@id = 'mikey-payloads-15' or
                      ../@id = 'mikey-payloads-17' or
                      ../@id = 'mikey-payloads-19' or
                      ../@id = 'mikey-payloads-20' or
                      ../@id = 'mikey-payloads-22' or
                      ../@id = 'mikey-payloads-24' or
                      ../@id = 'mikey-payloads-25' or
                      ../@id = 'mikey-payloads-26' or
                      ../@id = 'mikey-payloads-27' or
                      ../@id = 'mikey-payloads-28' or
                      ../@id = 'mikey-payloads-29' or
                      ../@id = 'mikey-payloads-31' or
                      ../@id = 'mikey-payloads-33' or
                      ../@id = 'mikey-payloads-34' or
                      ../@id = 'mikey-payloads-36' or
                      ../@id = 'mikey-payloads-39' or
                      ../@id = 'mikey-payloads-40' or
                      ../@id = 'mikey-payloads-41' or
                      ../@id = 'mikey-payloads-42' or
                      ../@id = 'mikey-payloads-43' or
                      ../@id = 'sakke-params' or
                      ../@id = 'id-scheme' or
                      ../@id = 'mikey-payloads-44'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mikey-payloads-4' or
                      ../@id = 'mikey-payloads-5' or
                      ../@id = 'mikey-payloads-8' or
                      ../@id = 'mikey-payloads-9'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:section"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mikey-payloads-13'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:note"/></td>
          <td><xsl:value-of select="iana:length"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'mikey-payloads-37' or
                      ../@id = 'mikey-payloads-38'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:note"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
