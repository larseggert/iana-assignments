<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'capwap-parameters-1'">
        <tr><th>CAPWAP Control Message</th><th>Message Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-2'">
        <tr><th>Flag Field Name</th><th>Bit Position</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-3'">
        <tr><th>Flag Field Name</th><th>Bit Position</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-4'">
        <tr><th>CAPWAP Message Element</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-5'">
        <tr><th>CAPWAP Wireless Binding Identifier</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-6'">
        <tr><th>AC Security Type</th><th>Bit Position</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-7'">
        <tr><th>AC DTLS Policy</th><th>Bit Position</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-8'">
        <tr><th>AC Information Type</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-9'">
        <tr><th>CAPWAP Transport Protocol Type</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-10'">
        <tr><th>Data Transfer Type</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-11'">
        <tr><th>Data Transfer Mode</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-12'">
        <tr><th>Discovery Types</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-13'">
        <tr><th>ECN Support</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-14'">
        <tr><th>Radio Admin State</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-15'">
        <tr><th>Radio Operational State</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-16'">
        <tr><th>Radio Failure Causes</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-17'">
        <tr><th>Result Code</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-18'">
        <tr><th>Returned Message Element Reason</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-19'">
        <tr><th>WTP Board Data Type</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-20'">
        <tr><th>WTP Descriptor Type</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-21'">
        <tr><th>WTP Fallback Mode</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-22'">
        <tr><th>WTP Frame Tunnel Mode</th><th>Bit Position</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-23'">
        <tr><th>WTP MAC Type</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-24'">
        <tr><th>WTP Radio Stats Failure Type</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-25'">
        <tr><th>WTP Reboot Stats Failure Type</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-26'">
        <tr><th>CAPWAP IEEE 802.11 Control Message</th><th>Message Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-27'">
        <tr><th>IEEE 802.11 Key Status</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-28'">
        <tr><th>IEEE 802.11 QoS</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-29'">
        <tr><th>IEEE 802.11 Auth Type</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-30'">
        <tr><th>IEEE 802.11 Antenna Combiner</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-31'">
        <tr><th>IEEE 802.11 Antenna Selection</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-32'">
        <tr><th>IEEE 802.11 Station Session Key</th><th>Bit Position</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-33'">
        <tr><th>IEEE 802.11 Tagging Policy</th><th>Bit Position</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-34'">
        <tr><th>IEEE 802.11 WTP Radio Fail</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-35'">
        <tr><th>IEEE 802.11 WTP Radio Type</th><th>Bit Position</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'capwap-parameters-36'">
        <tr><th>IEEE 802.11 Encryption Capabilities</th><th>Bit Position</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ieee-80211-split-mac-profile'">
        <tr><th>Profile</th><th>Type Value</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Description</th><th>Value</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'capwap-parameters-1'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-2'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-3'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when> 
      <xsl:when test="../@id = 'capwap-parameters-4'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when> 
      <xsl:when test="../@id = 'capwap-parameters-5'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when> 
      <xsl:when test="../@id = 'capwap-parameters-6'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when> 
      <xsl:when test="../@id = 'capwap-parameters-7'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when> 
      <xsl:when test="../@id = 'capwap-parameters-8'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when> 
      <xsl:when test="../@id = 'capwap-parameters-9'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when> 
      <xsl:when test="../@id = 'capwap-parameters-10'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when> 
      <xsl:when test="../@id = 'capwap-parameters-11'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-12'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-13'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-14'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-15'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-16'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-17'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-18'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-19'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-20'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-21'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-22'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-23'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-24'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-25'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-26'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-27'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-28'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-29'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-30'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-31'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-32'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-33'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-34'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-35'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'capwap-parameters-36'">
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
