(last updated 2009-10-13)

Name : John Fultz

Email : jfultz&wolfram.com

MIME media type name : Application

MIME subtype name : Vendor Tree - vnd.wolfram.mathematica

Required parameters : None

Optional parameters :
One optional parameter, version, which will take a value of two integers (a
major version number and a minor version number) separated by a decimal point.
E.g., <major>.<minor>

Encoding considerations : 8bit
This media type may require encoding on transports not capable of handling 8 bit
text.

Security considerations :
Mathematica notebooks contain code which is executable in the Mathematica
environment. This code is capable of making changes to the file system,
launching other processes, and doing pretty much anything that might be possible
within your user account.

This code may be present in four forms:

1) It may be explicitly shown inside the document. In order for it
to be executed, the user would have to explicitly cause an evaluation
of the code to happen.

2) It may be hidden behind a mechanism which triggers altering
interpretations to the visible input, or which adds code to
be run before and after a particular evaluation happens. This
code requires the user to explicitly evaluate it in order to
be executed.

3) The file may contain user interfaces including buttons which,
when pressed, will execute arbitrary code.

4) There may be code wrapped in the Mathematica Dynamic mechanism.
This code evaluates automatically as the objects it generates are
scrolled onscreen, or in some cases, simply by the very opening of
the notebook. All non-trivial user interfaces are implemented in
this way.

Mathematica may notify the user when executing Dynamic
code. System settings can classify a directory as trusted
(typically including the system directory and a few Mathematica-
specific configuration directories) or as untrusted (typically
including temporary and cache directories). If a file is opened
from a trusted location, no warning is ever issued. If a file
is opened from an untrusted location, a warning is immediately
issued before the first attempt to evaluate a Dynamic expression.
If a file is opened from a location which is neither trusted nor
untrusted, then a warning is issued if any attempt is made to
use any blacklisted functionality. All functionality which can
ultimately lead to accessing the file system or launching external
processes is blacklisted.

Also, Wolfram Research has the capability to sign a notebook in such a way as to
declare it secure, bypassing this mechanism. The signature is implemented using
a secure, public-key mechanism.

Finally, notebooks with Dynamic code will not execute in the Mathematica Player
product unless they have been signed using a similar mechanism to the one
described above.

Notebook files represent their content in the standard Mathematica language
syntax. This format is a highly structured, plain-text tree representation, not
unlike XML but with a different syntax. The syntax exposes the contents of the
notebook in a form which is readable and editable in a text editor by anybody
who understands the Mathematica language syntax and, to a lesser degree, by
those even without that knowledge. Notebooks can also be loaded as expressions
into the Mathematica computational engine, be examined or manipulated
programmatically, and be written out again in some modified form. Any
modification to a notebook file will invalidate the signature mechanism
described above, but is otherwise allowed and even encouraged.

In principle, the format could be simply extended to support user-level
encryption of notebooks to protect confidentiality, or signing directly by
authors to ensure provenance or integrity. Those features do not exist in the
format as of this writing, but they may be added in future releases.


Interoperability considerations :
The Mathematica notebook can include any of the standard newline conventions and
can be transported via binary or textual means across platforms. There are a
small number of data types (generally, difficult-to-create ones) which are not
faithfully rendered on all platforms, but the files will be read without error
nonetheless. All of the major data types, including text, mathematical
typesetting, 2D and 3D graphics, user interfaces, and sound are represented in a
completely platform-neutral manner.

The basic format is completely transportable from the current version
(Mathematica 7) all the way back to Mathematica 3, spanning a range of 13+
years. Additions continue to be made to the format, but those additions do not
prevent the file from being opened and perused in earlier versions, although
some features may not work. Older versions of the files always work in newer
versions.

All products in the Mathematica family of products can read notebook files.

Published specification :
No formal specification exists. A general description of the format is available
at http://www.wolfram.com/nb, and some more specific details are in the product
documentation. The syntax is a subset of the Mathematica language syntax.

Applications which use this media :
Mathematica, Mathematica Player, Mathematica Player Pro

Additional information :

1. Magic number(s) : None
2. File extension(s) : .nb
3. Macintosh file type code : Creator: OMEG, Type: TEXT
4. Object Identifiers: none

Conventionally, notebook files which have Dynamic code and have been signed to
run inside of Mathematica Player are .nbp files with the
application/vnd.wolfram.player type, while all other notebooks are .nb files
with the applications/vnd.wolfram.mathematica type. However, aside from the
signature, there is no practical difference between the two formats and the
Wolfram Research family of applications will treat them equivalently if
requested to open them.

Mathematica notebook files up to at least 2009 have been exclusively 7-bit text,
with Unicode values represented in a custom 7-bit encoding used in Wolfram
Research products. Future versions may additionally support UTF-8 encoding.

Person to contact for further information :

1. Name : Wolfram Research, Inc.
2. Email : info&wolfram.com

Intended usage : Common


Author/Change controller : Wolfram Research, Inc.

100 Trade Center Drive

Champaign, IL 61820-7237

(file created 2009-10-13)