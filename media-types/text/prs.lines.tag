
From john&paladin.demon.co.uk  Sun Jan 25 07:50:41 1998
To: iana&ISI.EDU
Subject: Mime type registration for prs.lines.tag

MIME media type name: text

MIME subtype name: prs.lines.tag

Required parameters: none

Optional parameters: none

Encoding considerations: 7bit.

Security considerations:

The openness of the tag format enables a tag message to be checked for
validity easily. Applications which read tag types should check that
the values that they are being presented with are valid.

Overall using tag types should be more secure that passing application
specific data around.

Interoperability considerations: 

The rules for tag type labels are the same as for mail headers.

Published specification:  http://www.paladin.demon.co.uk/tag-types/

Applications which use this media type:

There are a set of utilities for handling tag streams at
 http://www.paladin.demon.co.uk/tag-types/ including
tag2html - converts a tag file to html.
tagextract - extracts tagged records matching some conditions

Additional information:

Magic numbers: All tag data streams start Tag-xxx-version - where xxx is
the particular tag type.

File extensions: Suggest .tag for general purpose tag files, .dsc is used
for tag descriptor files

Person & email address to contact for further information:

John Lines <john&paladin.demon.co.uk>

Intended usage: COMMON

Author/Change controller: John Lines <john&paladin.demon.co.uk>

The text/prs.lines.tag MIME type is intended to convey the type of
data which is usually carried in mail messages in forms such as the
MIME type registration form, but in a more structured manner. As an
example the preceding registration template is repeated at
http://paladin.demon.co.uk/tag-types/mimetype-registration.tag in the
form of a series of tags. The description for the mimetype tag format
can be found at

http://www.paladin.demon.co.uk/tag-types/dsc/mimetypes.dsc and the
format of the mimetypes.dsc file is described in
http://www.paladin.demon.co.uk/tag-types/dsc/dsc.dsc





