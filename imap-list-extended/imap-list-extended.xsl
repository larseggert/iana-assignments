<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../_support/iana-registry.xsl" />
  <xsl:template name="iana:record_header">
    <xsl:choose>
     <xsl:when test="@id = 'imap-list-extended-1'">
      <tr>
        <th>LIST-EXTENDED option name</th>
        <th>LIST-EXTENDED option type</th>
        <th>Implied return option(s)</th>
        <th>LIST-EXTENDED option description</th>
        <th>Published specification</th>
        <th>Security considerations</th>
        <th>Intended usage</th>
        <th>Person and email address to contact for further information</th>
        <th>Owner/Change controller</th>
      </tr>
     </xsl:when>
     <xsl:when test="@id = 'imap-list-extended-2'">
      <tr>
        <th>LIST-EXTENDED extended data item tag</th>
        <th>LIST-EXTENDED extended data item description</th>
        <th>Which LIST-EXTENDED option(s) (and their types) causes this extended data item to be returned (if any)</th>
        <th>Published specification</th>
        <th>Security considerations</th>
        <th>Intended usage</th>
        <th>Person and email address to contact for further information</th>
        <th>Owner/Change controller</th>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="iana:record">
    <xsl:choose>
     <xsl:when test="../@id = 'imap-list-extended-1'">
      <tr>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:type"/></td>
       <td><xsl:value-of select="iana:implied_return_option"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:apply-templates select="iana:spec_ref"/></td>
       <td><xsl:apply-templates select="iana:security_ref"/></td>
       <td><xsl:apply-templates select="iana:intended_usage"/></td>
       <td><xsl:apply-templates select="iana:contact"/></td>
       <td><xsl:apply-templates select="iana:owner"/></td>
      </tr>
     </xsl:when>
     <xsl:when test="../@id = 'imap-list-extended-2'">
      <tr>
       <td><xsl:value-of select="iana:tag"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:return_option"/></td>
       <td><xsl:apply-templates select="iana:spec_ref"/></td>
       <td><xsl:apply-templates select="iana:security_ref"/></td>
       <td><xsl:apply-templates select="iana:intended_usage"/></td>
       <td><xsl:apply-templates select="iana:contact"/></td>
       <td><xsl:apply-templates select="iana:owner"/></td>
      </tr>
     </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
