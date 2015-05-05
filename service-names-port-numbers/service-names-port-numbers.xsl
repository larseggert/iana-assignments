<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Service Name</th>
      <th class="sortNumeric">Port Number</th>
      <th>Transport Protocol</th>
      <th>Description</th>
      <th>Assignee</th>
      <th>Contact</th>
      <th>Registration Date</th>
      <th>Modification Date</th>
      <th>Reference</th>
      <th>Service Code</th>
      <th>Known Unauthorized Uses</th>
      <th>Assignment Notes</th>
    </tr>
  </xsl:template>

  <!-- Warning: for the server side sort to work,inside td element use only 
       xsl:value-of or xsl:templates directives -->
  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:name" /></td>
      <td align="center"><xsl:value-of select="iana:number" /></td>
      <td align="center"><xsl:value-of select="iana:protocol" /></td>
      <td><xsl:apply-templates select="iana:description" /></td>
      <td>
        <xsl:apply-templates select="iana:assignee/iana:xref | iana:xref[not(../iana:assignee) and @type='person']"/>      
      </td>
      <td><xsl:apply-templates select="iana:xref[@type='person']" /></td>
      <td><xsl:value-of select="@date"/></td>
      <td><xsl:value-of select="@updated"/></td>
      <td><xsl:apply-templates select="iana:xref[@type!='person']" /></td>
      <td align="center"><xsl:value-of select="iana:sc" /></td>
      <td><xsl:value-of select="iana:unauthorized" /></td>
      <td><xsl:apply-templates select="iana:note" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
