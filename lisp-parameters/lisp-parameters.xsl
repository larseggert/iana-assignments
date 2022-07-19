<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'lisp-act-value'">
        <tr><th>Value</th><th>Action</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'lisp-crypto-cipher-suite'">
        <tr><th>Value</th><th>Suite</th><th>Definition</th></tr>
      </xsl:when>      
      <xsl:when test="@id = 'lisp-lcaf-type'">
        <tr><th>Value</th><th>LISP LCAF Type Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'lisp-packet-types'">
        <tr><th>Code</th><th>Message</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'lisp-shared-extension-message-type-sub-types'">
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Change Controller (First Come First Served Range)</th>
        </tr>
		</xsl:when>
	  <xsl:when test="@id = 'lisp-algorithm-id-numbers'">
        <tr>
          <th>Name</th>
          <th>Number</th>
          <th>MAC</th>
          <th>KDF</th>
        </tr>
		</xsl:when>
        <xsl:when test="@id = 'lisp-gpe-next-protocol'">
          <tr><th>Next Protocol</th><th>Description</th><th>Reference</th></tr>
        </xsl:when>
        <xsl:when test="@id = 'lisp-parameters-lisp-control-plane-header-bits-map-request'">
        <tr>
          <th>Spec Name</th>
          <th>IANA Name</th>
          <th>BIT Position</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
		<xsl:when test="@id = 'lisp-parameters-lisp-control-plane-header-bits-map-reply'">
        <tr>
          <th>Spec Name</th>
          <th>IANA Name</th>
          <th>BIT Position</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
		<xsl:when test="@id = 'lisp-parameters-lisp-control-plane-header-bits-map-register'">
        <tr>
          <th>Spec Name</th>
          <th>IANA Name</th>
          <th>BIT Position</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
		<xsl:when test="@id = 'lisp-parameters-lisp-control-plane-header-bits-encapsulated-control-message'">
        <tr>
          <th>Spec Name</th>
          <th>IANA Name</th>
          <th>BIT Position</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
		<xsl:when test="@id = 'lisp-parameters-lisp-control-plane-header-bits-eid-record'">
        <tr>
          <th>Spec Name</th>
          <th>IANA Name</th>
          <th>BIT Position</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
		<xsl:when test="@id = 'lisp-parameters-lisp-control-plane-header-bits-rloc-record'">
        <tr>
          <th>Spec Name</th>
          <th>IANA Name</th>
          <th>BIT Position</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
    <xsl:when test="@id = 'lisp-ecm-authentication-data-types'">
        <tr>
          <th>Number</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
    <xsl:when test="@id = 'map-reply-authentication-data-types'">
        <tr>
          <th>Number</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
    <xsl:when test="@id = 'lisp-sec-preferred-data-hmac-ids'">
        <tr>
          <th>Number</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
    <xsl:when test="@id = 'lisp-sec-authentication-data-key-wrap-ids'">
        <tr>
          <th>Number</th>
          <th>Name</th>
          <th>KEY WRAP</th>
          <th>KDF</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
    <xsl:when test="@id = 'lisp-sec-authentication-data-key-derivation-function-ids'">
        <tr>
          <th>Number</th>
          <th>Name</th>
          <th>Reference</th>
        </tr>
		</xsl:when>
      <xsl:otherwise>
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:otherwise>
    </xsl:choose>          
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'lisp-act-value'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:action"/></td>
      <td><xsl:value-of select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
      </xsl:when>
      
      <xsl:when test="../@id = 'lisp-address-type-codes-registry'">
      </xsl:when>
      <xsl:when test="../@id = 'lisp-algorithm-id-numbers'">
        <tr>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:mac"/></td>
          <td><xsl:apply-templates select="iana:kdf"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'lisp-crypto-cipher-suite'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:action"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'lisp-shared-extension-message-type-sub-types'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:controller"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'lisp-parameters-lisp-control-plane-header-bits-map-request'">
        <tr>
          <td><xsl:value-of select="iana:spec-name"/></td>
          <td><xsl:value-of select="iana:iana-name"/></td>
          <td><xsl:value-of select="iana:bit"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'lisp-parameters-lisp-control-plane-header-bits-map-reply'">
        <tr>
          <td><xsl:value-of select="iana:spec-name"/></td>
          <td><xsl:value-of select="iana:iana-name"/></td>
          <td><xsl:value-of select="iana:bit"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'lisp-parameters-lisp-control-plane-header-bits-map-register'">
        <tr>
          <td><xsl:value-of select="iana:spec-name"/></td>
          <td><xsl:value-of select="iana:iana-name"/></td>
          <td><xsl:value-of select="iana:bit"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'lisp-parameters-lisp-control-plane-header-bits-encapsulated-control-message'">
        <tr>
          <td><xsl:value-of select="iana:spec-name"/></td>
          <td><xsl:value-of select="iana:iana-name"/></td>
          <td><xsl:value-of select="iana:bit"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'lisp-parameters-lisp-control-plane-header-bits-eid-record'">
        <tr>
          <td><xsl:value-of select="iana:spec-name"/></td>
          <td><xsl:value-of select="iana:iana-name"/></td>
          <td><xsl:value-of select="iana:bit"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'lisp-parameters-lisp-control-plane-header-bits-rloc-record'">
      <tr>
        <td><xsl:value-of select="iana:spec-name"/></td>
        <td><xsl:value-of select="iana:iana-name"/></td>
        <td><xsl:value-of select="iana:bit"/></td>
        <td><xsl:value-of select="iana:description"/></td>
        <td><xsl:apply-templates select="iana:xref"/></td>
      </tr>
    </xsl:when>
      <xsl:when test="../@id = 'lisp-sec-authentication-data-key-wrap-ids'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:keywrap"/></td>
          <td><xsl:apply-templates select="iana:kdf"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
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

  <xsl:template name="iana:registryempty"/>

</xsl:stylesheet>
