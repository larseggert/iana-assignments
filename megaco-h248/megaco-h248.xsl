<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <xsl:choose> 
        <xsl:when test="@id = 'megaco-h248-2' or @id = 'megaco-h248-3'">
          <th>Serial</th>
          <th>Text Name</th>
          <th>Ver</th>
          <th>Extends Ser</th>
          <th>Extends Ver</th>
          <th>Status</th>
	  <th>Reference/Contact</th>
        </xsl:when>
        <xsl:when test="@id = 'megaco-h248-4'">
          <th>Error Code</th>
          <th>Description</th>
          <th>Reference</th>
        </xsl:when>
        <xsl:when test="@id = 'megaco-h248-5'">
          <th>Code</th>
          <th>ServiceChangeReasons</th>
          <th>References</th>
        </xsl:when>
         <xsl:when test="@id = 'megaco-h248-6'">
          <th>Profile Name</th>
          <th>Version</th>
	  <th>Reference/Contact</th>
        </xsl:when>
      </xsl:choose>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
	    <xsl:when test="../@id = 'megaco-h248-2' or ../@id = 'megaco-h248-3'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td align="center"><xsl:value-of select="iana:name"/></td>
          <td align="center"><xsl:value-of select="iana:ver"/></td>
          <td align="center"><xsl:value-of select="iana:extends_ver"/></td>
          <td align="center"><xsl:value-of select="iana:extends_ser"/></td>
          <td align="center"><xsl:value-of select="iana:status"/></td>
          <td><xsl:apply-templates select="iana:refcontact"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'megaco-h248-4' or ../@id = 'megaco-h248-5'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'megaco-h248-6'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:version"/></td>
          <td><xsl:apply-templates select="iana:refcontact"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
