<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'ssh-parameters-1'">
      <tr>
        <th>Value</th>
        <th>Message ID</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     
     <xsl:when test="@id = 'ssh-parameters-3'">
      <tr>
        <th>Reason Code</th>
        <th>Symbolic Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     
     <xsl:when test="@id = 'ssh-parameters-5'">
      <tr>
        <th>Reason Code</th>
        <th>Symbolic Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     
     <xsl:when test="@id = 'ssh-parameters-7'">
      <tr>
        <th>data_type_code</th>
        <th>Symbolic Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-8'">
      <tr>
        <th>Opcode</th>
        <th>Argument</th>
        <th>Description</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-9'">
      <tr>
        <th>Service Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-10'">
      <tr>
        <th>Method Name</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-11'">
      <tr>
        <th>Channel Type</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-12'">
      <tr>
        <th>Request Type</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-13'">
      <tr>
        <th>Request Type</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-14'">
      <tr>
        <th>Signal</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-15'">
      <tr>
        <th>Subsystem Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-16'">
      <tr>
        <th>Method Name</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-17'">
      <tr>
        <th>Encryption Algorithm Name</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-18'">
      <tr>
        <th>MAC Algorithm Name</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-19'">
      <tr>
        <th>Public Key Algorithm Name</th>
        <th>Public Key Format</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-20'">
      <tr>
        <th>Compression Algorithm Name</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-21'">
      <tr>
        <th>Header Tag</th>
        <th>Reference</th>
        <th>Note</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-22'">
      <tr>
        <th>Request Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-23'">
      <tr>
        <th>Response Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'ssh-parameters-24'">
      <tr>
        <th>Attribute Name</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
     
     <xsl:when test="@id = 'ssh-parameters-26'">
      <tr>
        <th>Value</th>
        <th>Status Code</th>
        <th>Reference</th>
      </tr>
     </xsl:when>
      
      <xsl:when test="@id = 'extension-names'">
        <tr>
          <th>Extension Name</th>
          <th>Reference</th>
          <th>Note</th>
        </tr>
      </xsl:when> 
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
     <xsl:when test="../@id = 'ssh-parameters-1'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     
     <xsl:when test="../@id = 'ssh-parameters-3'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     
     <xsl:when test="../@id = 'ssh-parameters-5'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     
     <xsl:when test="../@id = 'ssh-parameters-7'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ssh-parameters-8'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:argument"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
       <td><xsl:value-of select="iana:note"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ssh-parameters-9'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ssh-parameters-14'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ssh-parameters-15'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
      <xsl:when test="../@id = 'ssh-parameters-19'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:format"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="iana:note"/></td>
        </tr>
      </xsl:when>
     <xsl:when test="../@id = 'ssh-parameters-22'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ssh-parameters-23'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'ssh-parameters-24'">
      <tr>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
     
     <xsl:when test="../@id = 'ssh-parameters-26'">
      <tr>
       <td align="center"><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:status"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
     </xsl:when>
      <xsl:otherwise>
       <tr>
        <td><xsl:value-of select="iana:value"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
        <td><xsl:value-of select="iana:note"/></td>
       </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
