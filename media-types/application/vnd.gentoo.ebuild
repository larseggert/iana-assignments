(registered 2022-11-07, last updated 2022-11-07)

Media type name: application

Media subtype name: vnd.gentoo.ebuild

Required parameters: N/A.

Optional parameters: N/A.

Encoding considerations: binary

   Always encoded as UTF-8 with Unix-style newlines.

Security considerations: Ebuild files are bash scripts that provide 
   recipes for building and installing packages on Gentoo systems. 
   Ebuild files contain executable code, including code that is 
   executed with superuser privileges. Furthermore, they can install 
   arbitrary executable files to user systems.

   The specification provides standardized file download method that
   allows for authenticity verification and control over download 
   methods. Nevertheless, the build process can arbitrarily access 
   remote resources, although this is discouraged. Unless secured, 
   these communication could pose a privacy risk, or even a security 
   risk through exposing information about software that is being 
   installed on the system.

   Ebuild files are normally distributed as part of larger 
   repositories. Depending on the repository distribution method, 
   authenticity of all distributed files could be asserted using 
   OpenPGP signatures made on git commits, snapshot archives or 
   Gentoo Manifest files inside the repository.

Interoperability considerations: The ebuild file format is built upon 
   bash script. The specification requires using a specific minimal 
   bash version, as well as enforcing backwards compatible behavior 
   via BASH_COMPAT variable.

   Individual ebuild files may impose further interoperability 
   limitations.

Published specification: Package Manager Specification
   https://projects.gentoo.org/pms/latest/pms.html


Applications which use this media: Two complete implementations are 
   provided by the Portage [1] and PkgCore [2] package managers. 
   Support for an older version of the specification is povided by 
   the Paludis package manager [3]. There is also a work-in-progress 
   implementation by the PkgCraft project [4]. This list is not 
   exhaustive.

   [1] https://wiki.gentoo.org/wiki/Project:Portage
   [2] https://github.com/pkgcore/pkgcore
   [3] https://paludis.exherbo.org/
   [4] https://pkgcraft.github.io/about/

Fragment identifier considerations: N/A.

Restrictions on usage: N/A.

Additional information:

   1. Deprecated alias names for this type: N/A.
   2. Magic number(s): N/A.
   3. File extension(s): .ebuild
   4. Macintosh file type code: N/A.
   5. Object Identifiers: N/A.

Person to contact for further information:

   1. Name: Package Manager Specification project
   2. Email: pms&gentoo.org

Intended usage: COMMON

Author/Change controller: Gentoo Council <council&gentoo.org>
   (https://wiki.gentoo.org/wiki/Project:Council)