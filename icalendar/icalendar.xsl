<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'components'">
        <tr><th>Component</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'properties'">
        <tr><th>Property</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'parameters'">
        <tr><th>Parameter</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'value-data-types'">
        <tr><th>Value Data Type</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'calendar-user-types'">
        <tr><th>Calendar User Type</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'free-busy-time-types'">
        <tr><th>Free/Busy Time Type</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'participation-statuses'">
        <tr><th>Participation Status</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'relationship-types'">
        <tr><th>Relationship Type</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'participation-roles'">
        <tr><th>Role Type</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'actions'">
        <tr><th>Action</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'classifications'">
        <tr><th>Classification</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'methods'">
        <tr><th>Method</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'request-status'">
        <tr><th>Status Code</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'schedule-agent-values'">
        <tr><th>Schedule Agent</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'schedule-force-send-values'">
        <tr><th>Schedule Force Send</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'display-types'">
        <tr><th>Display Type</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'display-types'">
        <tr><th>Feature Type</th><th>Status</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Name</th><th>Status</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="@id = 'components'">    
        <tr>
        <td><xsl:value-of select="iana:name"/></td>
        <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:refs"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:apply-templates select="iana:refs"/></td>
        </tr>        
      </xsl:otherwise>        
    </xsl:choose>
    

  </xsl:template>

</xsl:stylesheet>
