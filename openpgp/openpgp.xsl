<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'openpgp-s2k-types'">
        <tr>
          <th>ID</th>
          <th>S2K Type</th>
          <th>S2K Field Size (Octets)</th>
          <th>Generate?</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-packet-types'">
        <tr>
          <th>ID</th>
          <th>Critical</th>
          <th>Packet Type Description</th>
          <th>Shorthand</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-user-attribute-subpacket-types'">
        <tr>
          <th>ID</th>
          <th>Attribute Subpacket</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-image-attribute-encoding-format'">
        <tr>
          <th>ID</th>
          <th>Encoding</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-signature-subpacket-types'">
        <tr><th>ID</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-signature-notation-data-subpacket-types'">
        <tr><th>Notation Name</th><th>Data Type</th><th>Allowed Values</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-key-server-preference-flags'">
        <tr>
          <th>Flag</th>
          <th>Shorthand</th>
          <th>Definition</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-reason-revocation-code'">
        <tr><th>Code</th><th>Reason</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-features-flags'">
        <tr><th>Feature</th><th>Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-key-flags'">
        <tr><th>Flag</th><th>Definition</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-public-key-algorithms'">
        <tr>
          <th>ID</th>
          <th>Algorithm</th>
          <th>Public Key Format</th>
          <th>Secret Key Format</th>
          <th>Signature Format</th>
          <th>PKESK Format</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-symmetric-key-algorithms'">
        <tr><th>ID</th><th>Algorithm</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-compression-algorithms'">
        <tr><th>ID</th><th>Algorithm</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-hash-algorithms'">
        <tr>
          <th>ID</th>
          <th>Algorithm</th>
          <th>Text Name</th>
          <th>V6 Signature Salt Size</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-secret-key-encryption'">
        <tr>
          <th>S2K Usage Octet</th>
          <th>Shorthand</th>
          <th>Encryption Parameter Fields</th>
          <th>Encryption</th>
          <th>Generate?</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-signature-types'">
        <tr><th>ID</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-signature-notation-data-subpacket-notation-flags' 
                  or @id = 'openpgp-signature-notation-data-subpacket-types'">
        <tr>
          <th>Flag Position</th>
          <th>Shorthand</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-key-id-fingerprint'">
        <tr>
          <th>Key Version</th>
          <th>Fingerprint</th>
          <th>Fingerprint Length (Bits)</th>
          <th>Key ID</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-image-attribute-version'">
        <tr><th>Version</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-armor-header-line'">
        <tr>
          <th>Armor Header</th>
          <th>Use</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-armor-header-key'">
        <tr>
          <th>Key</th>
          <th>Summary</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-ecc-curve-oid-usage'">
        <tr>
          <th>ASN.1 Object Identifier</th>
          <th>OID Len</th>
          <th>Curve OID Octets</th>
          <th>Curve Name</th>
          <th>Usage</th>
          <th>Field Size (fsize)</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-curve-specific-wire-formats'">
        <tr>
          <th>Curve</th>
          <th>ECDH Point Format</th>
          <th>ECDH Secret Key MPI</th>
          <th>EdDSA Secret Key MPI</th>
          <th>EdDSA Signature first MPI</th>
          <th>EdDSA Signature second MPI</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-hash-alg-ids-rsa-sig-emsa-pkcs1-v1_5-padding'">
        <tr>
          <th>Hash Algorithm</th>
          <th>OID</th>
          <th>Full Hash Prefix</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-aead-algorithms'">
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Nonce Length (Octets)</th>
          <th>Authentication Tag Length (Octets)</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-encrypted-message-packet-versions'">
        <tr>
          <th>Version of Encrypted Data Payload</th>
          <th>Version of Preceding Symmetric-Key ESK (If Any)</th>
          <th>Version of Preceding Public-Key ESK (If Any)</th>
          <th>Generate?</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-key-signature-versions'">
        <tr>
          <th>Signing Key Version</th>
          <th>Signature Packet Version</th>
          <th>OPS Packet Version</th>
          <th>Generate?</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-elliptic-curve-point-wire-formats'">
        <tr>
          <th>Name</th>
          <th>Wire Format</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-elliptic-curve-scalar-encodings'">
        <tr>
          <th>Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-elliptic-curve-scalar-encodings'">
        <tr>
          <th>Type</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'openpgp-ecdh-kdf-kek'">
        <tr>
          <th>Curve</th>
          <th>Hash Algorithm</th>
          <th>Symmetric Algorithm</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'openpgp-s2k-types'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:size"/></td>
          <td><xsl:value-of select="iana:generate"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-packet-types'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:critical"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:shorthand"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-key-server-preference-flags'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:definition"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-public-key-algorithms'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:public"/></td>
          <td><xsl:apply-templates select="iana:secret"/></td>
          <td><xsl:apply-templates select="iana:signature"/></td>
          <td><xsl:apply-templates select="iana:pkesk"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-hash-algorithms'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:salt"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-secret-key-encryption'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:encparam"/></td>
          <td><xsl:apply-templates select="iana:enc"/></td>
          <td><xsl:apply-templates select="iana:generate"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-signature-notation-data-subpacket-notation-flags' 
                  or ../@id = 'openpgp-signature-notation-data-subpacket-types'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:shorthand"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-key-id-fingerprint'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:length"/></td>
          <td><xsl:apply-templates select="iana:id"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-image-attribute-version'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-armor-header-line'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-armor-header-key'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-ecc-curve-oid-usage'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:len"/></td>
          <td><xsl:value-of select="iana:octets"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:value-of select="iana:usage"/></td>
          <td><xsl:value-of select="iana:fsize"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-curve-specific-wire-formats'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:point"/></td>
          <td><xsl:apply-templates select="iana:ecdhkey"/></td>
          <td><xsl:value-of select="iana:eddsakey"/></td>
          <td><xsl:value-of select="iana:eddsasigfirst"/></td>
          <td><xsl:value-of select="iana:eddsasigsec"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-hash-alg-ids-rsa-sig-emsa-pkcs1-v1_5-padding'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:oid"/></td>
          <td><xsl:apply-templates select="iana:prefix"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-aead-algorithms'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:nonce"/></td>
          <td><xsl:apply-templates select="iana:auth"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-encrypted-message-packet-versions'">
        <tr>
          <td><xsl:apply-templates select="iana:encrypted"/></td>
          <td><xsl:apply-templates select="iana:symmetric"/></td>
          <td><xsl:apply-templates select="iana:public"/></td>
          <td><xsl:apply-templates select="iana:generate"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-key-signature-versions'">
        <tr>
          <td><xsl:apply-templates select="iana:signing"/></td>
          <td><xsl:apply-templates select="iana:sig"/></td>
          <td><xsl:apply-templates select="iana:ops"/></td>
          <td><xsl:apply-templates select="iana:generate"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'openpgp-ecdh-kdf-kek'">
        <tr>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:hash"/></td>
          <td><xsl:apply-templates select="iana:symmetric"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
