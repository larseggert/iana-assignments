<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
     <tr>
    <xsl:choose>
      <xsl:when test="@id = 'sctp-parameters-1'">
       <th>ID Value</th>
       <th>Chunk Type</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sctp-parameters-2'">
       <th>ID Value</th>
       <th>Chunk Parameter Type</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sctp-parameters-4' or
	              @id = 'sctp-parameters-5' or
	              @id = 'sctp-parameters-6' or
	              @id = 'sctp-parameters-7' or
	              @id = 'sctp-parameters-8' or
	              @id = 'sctp-parameters-9' or
	              @id = 'sctp-parameters-10' or
	              @id = 'sctp-parameters-11' or
	              @id = 'sctp-parameters-12' or
	              @id = 'sctp-parameters-13' or
	              @id = 'sctp-parameters-14' or
	              @id = 'sctp-parameters-15' or
	              @id = 'sctp-parameters-16' or
	              @id = 'sctp-parameters-17' or
	              @id = 'sctp-parameters-18' or
	              @id = 'sctp-parameters-19' or
	              @id = 'sctp-parameters-20' or
	              @id = 're-config-chunk-flags' or
	              @id = 'sctp-parameters-21' or
	              @id = 'sctp-parameters-22' or
	              @id = 'sctp-parameters-23'">
       <th>Chunk Flag Value</th>
       <th>Chunk Flag Name</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sctp-parameters-24'">
       <th>Value</th>
       <th>Cause Code</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sctp-parameters-25'">
       <th>Value</th>
       <th>SCTP Payload Protocol Identifier</th>
       <th>Reference</th>
       <th>Date</th>
      </xsl:when>
      <xsl:when test="@id = 'sctp-parameters-26'">
       <th>HMAC Identifier</th>
       <th>Message Digest Algorithm</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'sctp-parameters-27'">
       <th>Code Point (32-bit number)</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
    </xsl:choose>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
     <tr>
    <xsl:choose>
      <xsl:when test="../@id = 'sctp-parameters-1' or
	              ../@id = 'sctp-parameters-2' or
	              ../@id = 'sctp-parameters-4' or
	              ../@id = 'sctp-parameters-5' or
	              ../@id = 'sctp-parameters-6' or
	              ../@id = 'sctp-parameters-7' or
	              ../@id = 'sctp-parameters-8' or
	              ../@id = 'sctp-parameters-9' or
	              ../@id = 'sctp-parameters-10' or
	              ../@id = 'sctp-parameters-11' or
	              ../@id = 'sctp-parameters-12' or
	              ../@id = 'sctp-parameters-13' or
	              ../@id = 'sctp-parameters-14' or
	              ../@id = 'sctp-parameters-15' or
	              ../@id = 'sctp-parameters-16' or
	              ../@id = 'sctp-parameters-17' or
	              ../@id = 'sctp-parameters-18' or
	              ../@id = 'sctp-parameters-19' or
	              ../@id = 'sctp-parameters-20' or
	              ../@id = 're-config-chunk-flags' or
	              ../@id = 'sctp-parameters-21' or
	              ../@id = 'sctp-parameters-22' or
	              ../@id = 'sctp-parameters-23' or
	              ../@id = 'sctp-parameters-24' or
	              ../@id = 'sctp-parameters-26'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'sctp-parameters-25'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
       <td><xsl:value-of select="@date"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'sctp-parameters-27'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
    </xsl:choose>
     </tr>
  </xsl:template>
</xsl:stylesheet>
