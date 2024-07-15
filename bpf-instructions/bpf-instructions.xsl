<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'bpf-instruction-conformance-groups'">
        <tr>
          <th>Name</th>
          <th>Description</th>
          <th>Includes</th>
          <th>Excludes</th>
          <th>Status</th>
          <th>Reference</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'bpf-instruction-set'">
        <tr>
          <th>Opcode</th>
          <th>Src_Reg</th>
          <th>Offset</th>
          <th>Imm</th>
          <th>Description</th>
          <th>Groups</th>
          <th>Reference</th>
          <th>Change Controller</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'bpf-instruction-conformance-groups'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:inc"/></td>
          <td><xsl:apply-templates select="iana:exc"/></td>
          <td><xsl:apply-templates select="iana:status "/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'bpf-instruction-set'">
        <tr>
          <td><xsl:value-of select="iana:opcode"/></td>
          <td><xsl:apply-templates select="iana:src_reg"/></td>
          <td><xsl:apply-templates select="iana:offset"/></td>
          <td><xsl:apply-templates select="iana:imm"/></td>
          <td><xsl:apply-templates select="iana:description "/></td>
          <td><xsl:apply-templates select="iana:groups "/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
