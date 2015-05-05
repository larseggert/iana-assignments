<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <!-- Override the iana:registryempty so that registries which are a referral
       are not shown as empty -->
  <xsl:template name="iana:registryempty">
    <xsl:if test="not(@id = 'smi-numbers-1' or
                      @id = 'smi-numbers-25' or
                      @id = 'smi-numbers-62' or
                      @id = 'smi-numbers-63' or
                      @id = 'smi-numbers-71')">
      <table>
        <tr>
          <td colspan="0">
            <i>Registry is empty.</i>
          </td>
        </tr>
      </table>
    </xsl:if>
  </xsl:template>

  <xsl:template name="iana:record_header">
    <tr>
      <xsl:choose>
        <xsl:when test="@id = 'smi-numbers-10' or @id = 'smi-numbers-11'">
          <th>Decimal</th>
          <th>Descriptor</th>
          <th>OID Type</th>
        </xsl:when>
        <xsl:when test="@id = 'smi-numbers-23' or
                        @id = 'smi-numbers-28' or
                        @id = 'smi-numbers-66' or
                        @id = 'smi-numbers-67' or
                        @id = 'smi-numbers-68' or
                        @id = 'smi-numbers-69' or
                        @id = 'smi-numbers-70'">
          <th>Decimal</th>
          <th>Name</th>
          <th>Description</th>
        </xsl:when>        
        <xsl:when test="@id = 'ltans-module-identifiers'">
          <th>OID Value</th>
          <th>Description</th>
        </xsl:when>
        <xsl:when test="@id = 'smi-numbers-29'">
          <th>OID Value</th>
          <th>Name</th>
          <th>Description</th>
        </xsl:when>
        <xsl:when test="@id = 'security-smime' or
                        @id = 'security-smime-0' or
                        @id = 'security-smime-1' or
                        @id = 'security-smime-2' or
                        @id = 'security-smime-3' or
                        @id = 'security-smime-4' or
                        @id = 'security-smime-5' or
                        @id = 'security-smime-6' or
                        @id = 'security-smime-7' or
                        @id = 'security-smime-8' or
                        @id = 'security-smime-8' or
                        @id = 'security-smime-10' or
                        @id = 'security-smime-11' or
                        @id = 'security-smime-12' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.0' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.1' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.2' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.3' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.4' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.5' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.5.1' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.5.2' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.6' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.7' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.7.99' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.8' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.9' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.10' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.11' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.12' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.13' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.14' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.15' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.16' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.17' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.18' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.19' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.19.2' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.19.3' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.19.4' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.20' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.21' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.22' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.23' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.48' or
                        @id = 'smi-numbers-1.3.6.1.5.5.7.48.1'">
          <th>Decimal</th>
          <th>Description</th>
        </xsl:when>   
        <xsl:otherwise>
          <xsl:if test="iana:record/iana:value"><th>Decimal</th></xsl:if>
          <xsl:if test="iana:record/iana:name"><th>Name</th></xsl:if>
          <xsl:if test="iana:record/iana:description"><th>Description</th></xsl:if>
        </xsl:otherwise>
      </xsl:choose>
      <th>References</th>
    </tr>
  </xsl:template>
  
  <xsl:template match="iana:record">
    <tr>
      <xsl:choose>
        <xsl:when test="../@id = 'smi-numbers-23' or
                        ../@id = 'smi-numbers-28' or
                        ../@id = 'smi-numbers-66' or
                        ../@id = 'smi-numbers-67' or
                        ../@id = 'smi-numbers-68' or
                        ../@id = 'smi-numbers-69' or
                        ../@id = 'smi-numbers-70'">
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
        </xsl:when>        
        <xsl:when test="../@id = 'ltans-module-identifiers'">
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
        </xsl:when>
        <xsl:when test="../@id = 'smi-numbers-29'">
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:description"/></td>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="../iana:record/iana:value"><td align="center"><xsl:value-of select="iana:value"/></td></xsl:if>
          <xsl:if test="../iana:record/iana:name"><td><xsl:value-of select="iana:name"/></td></xsl:if>
          <xsl:if test="../iana:record/iana:type"><td><xsl:value-of select="iana:type"/></td></xsl:if>
          <xsl:if test="../iana:record/iana:description"><td><xsl:value-of select="iana:description"/></td></xsl:if>
        </xsl:otherwise>
      </xsl:choose>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
