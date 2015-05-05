
(last updated 2003-10-02)

Name : Benja Fallenstein

Email : b.fallenstein&gmx.de

MIME media type name : Text

MIME subtype name : Personal Tree - prs.fallenstein.rst

Required parameters : None.

Optional parameters : 
The charset parameter, as specified for all subtypes of the "text" media type 
in section 4.1.2 of RFC 2046. The default value is UTF-8.

Note that due to the constraints on the "text" top-level type, linebreaks must 
be represented as CR/LF octets, and the charset must allow for this. In particular,
for this reason, UTF-16 and UTF-32 are not suitable as charsets for this media 
type. (This does not apply to HTTP, which is not MIME-compliant in that it 
relaxes restrictions on the "text" type; see section 19.4.2 of RFC 2616.)

Encoding considerations : 8bit
This media type may require encoding on transports not capable of handling 8 bit text.

Security considerations : 
ReStructuredText is a textual format that is readable as plain text. If used in 
this way, it introduces no security issues beyond those inherent in using text/plain.

On the other hand, reStructuredText can be used as the source for generating various 
other formats, for example HTML or LaTeX. The reStructuredText format includes a 
facility for including "raw" information in any such format. Therefore, if used in 
this way, all security considerations for the target format also apply to reStructuredText.

Interoperability considerations : 
No issues known.

Published specification : 
The reStructuredText specification is available from the format's homepage,
<http://docutils.sourceforge.net/rst.html>.

Applications which use this media : 
The docutils system, available from <http://docutils.sourceforge.net/>.

Additional information :

1. Magic number(s) : None.
2. File extension(s) : .txt, .rst
3. Macintosh file type code : None.
4. Object Identifiers: None.

ReStructuredText is a markup format that is particularly readable in source form, 
using long-standing conventions for plain text (such as surrounding a phrase with 
asterisks to emphasize it).

ReStructuredText was designed and implemented by David Goodger, not by the registrant 
of this media type. The registrant just happened to have need of a registered media type for it.

Person to contact for further information :

1. Name : Benja Fallenstein
2. Email : b.fallenstein&gmx.de

Intended usage : Common 
    
Author/Change controller : Change control for this registration is currently 
with Benja Fallenstein. (If anybody more intimately involved with ReStructuredText 
wants to take it over, it will be surrendered gladly.)
 
(created 2-October-2003)