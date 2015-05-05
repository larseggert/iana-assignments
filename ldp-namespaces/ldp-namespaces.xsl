<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
     <tr>
    <xsl:choose>
      
      <xsl:when test="@id = 'ldp-namespaces-2' or @id = 'ldp-namespaces-11' or @id = 'ldp-namespaces-13' or @id = 'ldp-namespaces-14'">
       <th>Value</th>
       <th>Name</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'ldp-namespaces-4'">
       <th>Value</th>
       <th>Description</th>
       <th>Reference</th>
       <th>Notes/Registration Date</th>
      </xsl:when>
      <xsl:when test="@id = 'fec-type'">
       <th>Value</th>
       <th>Hex</th>
       <th>Name</th>
       <th>Label Advertisement Discipline</th>
       <th>Reference</th>
       <th>Notes/Registration Date</th>
      </xsl:when>
      <xsl:when test="@id = 'status-codes'">
       <th>Range/Value</th>
       <th>E</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
      <xsl:when test="@id = 'mac-flush-flags'">
       <th>Bit Number</th>
       <th>Hex</th>
       <th>Abbreviation</th>
       <th>Description</th>
       <th>Reference</th>
      </xsl:when>
    </xsl:choose>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
     <tr>
    <xsl:choose>
      
      <xsl:when test="../@id = 'ldp-namespaces-2' or ../@id = 'ldp-namespaces-11' or ../@id = 'ldp-namespaces-13' or ../@id = 'ldp-namespaces-14'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldp-namespaces-4'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
       <td><xsl:apply-templates select="iana:notes"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'fec-type'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:hex"/></td>
       <td><xsl:value-of select="iana:name"/></td>
        <td><xsl:value-of select="iana:lad"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
       <td><xsl:apply-templates select="iana:notes"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'status-codes'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:e"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'mac-flush-flags'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:hex"/></td>
       <td><xsl:value-of select="iana:abbreviation"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:xref"/></td>
      </xsl:when>
    </xsl:choose>
     </tr>
  </xsl:template>
</xsl:stylesheet>
