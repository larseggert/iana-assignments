<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
     <tr>
    <xsl:choose>
      <xsl:when test="@id = 'masc-parameters-1' or
                      @id = 'masc-parameters-2' or
                      @id = 'masc-parameters-3' or
                      @id = 'masc-parameters-4'">
       <th>Value</th>
       <th>Type</th>
      </xsl:when>
      <xsl:when test="@id = 'masc-parameters-5'">
       <th>Error Code</th>
       <th>Symbolic Name</th>
      </xsl:when>
      <xsl:when test="@id = 'masc-parameters-7' or
                      @id = 'masc-parameters-8' or
                      @id = 'masc-parameters-9' or
                      @id = 'masc-parameters-10' or
                      @id = 'masc-parameters-11' or
                      @id = 'masc-parameters-12' or
                      @id = 'masc-parameters-13'">
       <th>Subcode</th>
       <th>Symbolic Name</th>
       <th>O-bit</th>
      </xsl:when>
    </xsl:choose>
    <th>Reference</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
     <tr>
    <xsl:choose>
	    <xsl:when test="../@id = 'masc-parameters-1' or
		    ../@id = 'masc-parameters-2' or
		    ../@id = 'masc-parameters-3' or
		    ../@id = 'masc-parameters-4' or
		    ../@id = 'masc-parameters-5'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'masc-parameters-7' or
	      ../@id = 'masc-parameters-8' or
	      ../@id = 'masc-parameters-9' or
	      ../@id = 'masc-parameters-10' or
	      ../@id = 'masc-parameters-11' or
	      ../@id = 'masc-parameters-12' or
	      ../@id = 'masc-parameters-13'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:obit"/></td>
      </xsl:when>
    </xsl:choose>
       <td><xsl:apply-templates select="iana:xref"/></td>
     </tr>
  </xsl:template>
</xsl:stylesheet>
