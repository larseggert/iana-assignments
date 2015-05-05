<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'eappotp-identifiers-2'">
      <tr>
        <th>Octet 1</th>
        <th>Octet 2</th>
        <th>Hash Algorithm</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'eappotp-identifiers-4'">
      <tr>
        <th>Octet 1</th>
        <th>Octet 2</th>
        <th>Encryption Algorithm</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'eappotp-identifiers-6'">
      <tr>
        <th>Octet 1</th>
        <th>Octet 2</th>
        <th>MAC Algorithm</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
     <xsl:when test="../@id = 'eappotp-identifiers-2'">
      <tr>
       <td><xsl:value-of select="iana:octet_1"/></td>
       <td><xsl:value-of select="iana:octet_2"/></td>
       <td><xsl:value-of select="iana:hash_algorithm"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'eappotp-identifiers-4'">
      <tr>
       <td><xsl:value-of select="iana:octet_1"/></td>
       <td><xsl:value-of select="iana:octet_2"/></td>
       <td><xsl:value-of select="iana:encryption_algorithm"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'eappotp-identifiers-6'">
      <tr>
       <td><xsl:value-of select="iana:octet_1"/></td>
       <td><xsl:value-of select="iana:octet_2"/></td>
       <td><xsl:value-of select="iana:MAC_algorithm"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
