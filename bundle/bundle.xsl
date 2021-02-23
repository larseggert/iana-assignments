<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'block-types'">
        <tr><th>Bundle Protocol Version</th><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>	  
      <xsl:when test="@id = 'processing-control'">
        <tr><th>Bundle Protocol Version</th><th>Bit Position (right to left)</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'block-processing-control'">
        <tr><th>Bundle Protocol Version</th><th>Bit Position (right to left)</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'status-reason'">
        <tr><th>Bundle Protocol Version</th><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ciphersuite-flags'">
        <tr><th>Bit Position (right to left)</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcpcl-message'">
        <tr><th>Type</th><th>Code</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcpcl-refuse-reason'">
        <tr><th>RCode</th><th>Semantics</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcpcl-shutdown-reason'">
        <tr><th>Code</th><th>Meaning</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-convergence-layer-session-extension'">
        <tr><th>Code</th><th>Session Extension Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-convergence-layer-transfer-extension'">
        <tr><th>Code</th><th>Transfer Extension Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-convergence-layer-message'">
        <tr><th>Code</th><th>Message Type</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-convergence-xfer-refuse-reason'">
        <tr><th>Code</th><th>Refusal Reason</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-convergence-sess-term-reason'">
        <tr><th>Code</th><th>Termination Reason</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'tcp-convergence-msg-reject-reason'">
        <tr><th>Code</th><th>Rejection Reason</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'bundle-uri-scheme'">
        <tr><th>Value</th><th>Description</th><th>BP Utilization Reference</th><th>URI Definition Reference</th></tr>
      </xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'block-types'">
        <tr>
		  <td><xsl:value-of select="iana:protocol"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'processing-control'">
        <tr>
		  <td><xsl:value-of select="iana:protocol"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'block-processing-control'">
        <tr>
		  <td><xsl:value-of select="iana:protocol"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'status-reason'">
        <tr>
		  <td><xsl:value-of select="iana:protocol"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcpcl-message'">
        <tr>
          <td><xsl:value-of select="iana:type"/></td>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcpcl-refuse-reason'">
        <tr>
          <td><xsl:value-of select="iana:rcode"/></td>
          <td><xsl:value-of select="iana:semantics"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcpcl-shutdown-reason'">
        <tr>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:meaning"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-convergence-layer-session-extension'">
        <tr>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:session"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-convergence-layer-transfer-extension'">
        <tr>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:transfer"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-convergence-layer-message'">
        <tr>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:message"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-convergence-xfer-refuse-reason'">
        <tr>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:refusal"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-convergence-sess-term-reason'">
        <tr>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:termination"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'tcp-convergence-msg-reject-reason'">
        <tr>
          <td><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:rejection"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'bundle-uri-scheme'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
		  <td><xsl:apply-templates select="iana:bp-ref"/></td>
		  <td><xsl:apply-templates select="iana:uri-ref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
