(registered 2017-09-07, last updated 2019-12-16)

Media type name: application

Media subtype name: vnd.bbf.usp.msg 

Required parameters: none

Optional parameters: none

Encoding considerations: binary

Security considerations:
A USP Message (usp.msg) may contain instructions for loading new firmware, rebooting, or resetting various passwords and other configuration information. It may also provide access to read private information. USP Message requires encryption using TLS or DTLS above the transport protocol and requires all endpoints to have X.509 certificates for authentication and authorization. As different implementations will provide access to different capabilities or information (i.e., not all will allow firmware updates, reboots, configuration, or access to private information), the actual trust model to be used by an endpoint will be defined by the endpoint manufacturer and/or controlling entity. Additional security requirements and discussion are documented in the published specification. 

Interoperability considerations:
Content will be protobuf encoded. Protobuf schema is published with the specification. 

Published specification:
https://usp.technology/

Applications which use this media:
This media type is used by USP Endpoints to transmit USP Messages for purpose of: 
- management 
- configuration 
- executable commands 
- access to statistics or other output 

Fragment identifier considerations:
none

Restrictions on usage:
none

Additional information:

1. Deprecated alias names for this type: none
2. Magic number(s): none
3. File extension(s): none
4. Macintosh file type code: none
5. Object Identifiers: none

General Comments:
None

Person to contact for further information:

1. Name: Broadband Forum
2. Email: help&broadband-forum.org

Intended usage: Common
None

Author/Change controller: help&broadband-forum.org