(RFC 2652 published August 1999, subtype last updated August 1999)

MIME media type name: application

MIME subtype name: index.cmd

Required parameters: none

Optional parameters: none

Encoding considerations: none

Security considerations:

Security considerations come into play in at least the following
two scenarios. Indexing information can leak undesirable amounts
of proprietary information, unless carefully controlled. At a more
fundamental level, the CIP protocol itself requires external
security services to operate in a safe manner. Both topics are
covered below.

Interoperability considerations:

Implementors should handle unknown commands gracefully.

Published specification:

RFC 2652

Applications which use this media type:

This media type is the top of a tree of media types that express
commands between hosts that exchange indices for the purpose of
routing referrals.

Additional information:

This media type is not a standalone type. It is the top of a tree
similar to the vnd and prs trees specified in Section 2.1 of
RFC2048. Types registered within this tree are limited to being
commands as specified in the document(s) referenced in the
"Published specifications" section.

Person & email address to contact for further information:

Intended usage: LIMITED USE

Author/Change controller:

