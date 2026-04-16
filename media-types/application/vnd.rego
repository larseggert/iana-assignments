(registered 2026-04-15, last updated 2026-04-15)

Media type name: application

Media subtype name: vnd.rego

Required parameters: N/A

Optional parameters: N/A

Encoding considerations: 8bit

Security considerations: Rego Policies are intended to be parsed, validated, and evaluated by the recipient; however, they may be rejected for the following reasons:

a) The sender is not trusted
b) The policy is too long
c) The policy is not syntactically or semantically valid
d) The policy refers to unsupported features by the host

A Rego parser, checker, and runtime must be integrated into the host for a policy to be able to be evaluated against inputs. The language itself is not Turing complete, but integrators must take steps to ensure policy evaluation does not exceed acceptable compute and memory constraints.

Since the text can contains free-form string literals, it is possible the policy contains sensitive information.

Policies should be sent over TLS, or a similar encrypted and integrity-protected channel to the host, to avoid possible tampering during transit, and unauthorized disclosure of information to third parties.
Within a local filesystem or access-controlled server, policies may be stored in plain text.

Interoperability considerations: The contents of this file are expected to be UTF-8 encoded.

Published specification: https://www.openpolicyagent.org/docs/policy-language

Applications which use this media: Rego is used to enforce policies in microservices, Kubernetes, CI/CD pipelines, API gateways, Transparency Services etc.

Fragment identifier considerations: N/A

Restrictions on usage: No restrictions

Additional information:

1. Deprecated alias names for this type: N/A
2. Magic number(s): N/A
3. File extension(s): .rego
4. Macintosh file type code: N/A
5. Object Identifiers: N/A

General Comments:

Person to contact for further information:

1. Name: Anders Eknert
2. Email: anders.eknert&apple.com

Intended usage: COMMON

Author/Change controller: Open Policy Agent
(https://github.com/open-policy-agent/opa/blob/main/GOVERNANCE.md, https://github.com/open-policy-agent/opa/blob/main/MAINTAINERS.md)
