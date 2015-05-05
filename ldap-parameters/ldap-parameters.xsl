<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
     <tr>
    <xsl:choose>
      <xsl:when test="@id = 'ldap-parameters-1'">
       <th>Decimal</th>
       <th>Name</th>
       <th>Description</th>
      </xsl:when>
      <xsl:when test="@id = 'ldap-parameters-2'">
       <th>Object Identifier</th>
       <th>Type</th>
       <th>Description</th>
      </xsl:when>
      <xsl:when test="@id = 'ldap-parameters-3'">
       <th>Name</th>
       <th>Type</th>
       <th>OID</th>
      </xsl:when>
      <xsl:when test="@id = 'ldap-parameters-4'">
       <th>Option</th>
       <th>Owner</th>
      </xsl:when>
      <xsl:when test="@id = 'ldap-parameters-5' or
	              @id = 'ldap-parameters-6'">
       <th>Name</th>
       <th>Code</th>
       <th>Owner</th>
      </xsl:when>
      <xsl:when test="@id = 'ldap-parameters-7'">
       <th>Method</th>
       <th>Value</th>
       <th>Owner</th>
       <th>Usage</th>
      </xsl:when>
      <xsl:when test="@id = 'ldap-parameters-8'">
       <th>Object Identifier</th>
       <th>Syntax</th>
       <th>Owner</th>
      </xsl:when>
      <xsl:when test="@id = 'ldap-parameters-9'">
       <th>Name</th>
       <th>URLString</th>
       <th>Value</th>
       <th>Owner</th>
      </xsl:when>
      <xsl:when test="@id = 'ldap-parameters-10' or
	              @id = 'ldap-parameters-11'">
       <th>Name</th>
       <th>Value</th>
       <th>Owner</th>
      </xsl:when>
      <xsl:when test="@id = 'ldap-parameters-12'">
       <th>Name</th>
       <th>Prefix</th>
       <th>Owner</th>
      </xsl:when>
    </xsl:choose>
    <th>Reference</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
     <tr>
    <xsl:choose>
       <xsl:when test="../@id = 'ldap-parameters-1'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:description"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldap-parameters-2'">
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:type"/></td>
       <td><xsl:value-of select="iana:description"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldap-parameters-3'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:type"/></td>
       <td><xsl:value-of select="iana:value"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldap-parameters-4'">
       <td><xsl:apply-templates select="iana:name"/></td>
       <td><xsl:value-of select="iana:owner"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldap-parameters-5' or
	              ../@id = 'ldap-parameters-6'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:owner"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldap-parameters-7'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:apply-templates select="iana:owner"/></td>
       <td><xsl:apply-templates select="iana:description"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldap-parameters-8'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:description"/></td>
       <td><xsl:value-of select="iana:owner"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldap-parameters-9'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:urlstring"/></td>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:owner"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldap-parameters-10' or
	              ../@id = 'ldap-parameters-11'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:owner"/></td>
      </xsl:when>
      <xsl:when test="../@id = 'ldap-parameters-12'">
       <td><xsl:value-of select="iana:name"/></td>
       <td><xsl:value-of select="iana:value"/></td>
       <td><xsl:value-of select="iana:owner"/></td>
      </xsl:when>
    </xsl:choose>
       <td><xsl:apply-templates select="iana:xref"/></td>
     </tr>
  </xsl:template>
</xsl:stylesheet>
