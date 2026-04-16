(registered 2026-04-15, last updated 2026-04-15)

Media type name: image

Media subtype name: vnd.sld

Required parameters: N/A

Optional parameters: N/A

Encoding considerations: binary

Security considerations: AutoCAD Slide files contain only static vector drawing commands (lines, filled polygons, and colour records) for rendering a viewport screenshot. The format does not contain active or executable content, does not support embedded objects or external references, and does not employ compression or container structures.

No privacy or integrity services are provided by the format. If such services are required, they should be provided externally, e.g. through the use of TLS.

Implementations should validate header fields (dimensions, aspect ratio) before allocating memory for rendering, as a malformed file could specify unreasonable dimensions.

Interoperability considerations: AutoCAD Slide files contain a byte-order test number at header offset 29. Readers must check whether this field reads as 0x1234 (same endianness) or 0x3412 (opposite endianness) and swap multi-byte values accordingly. Level 1 files (pre-AutoCAD Release 9) lack this field and are not portable across CPU architectures. Level 2 files (Release 9 and later) are portable when the test number is correctly handled.

The format has been stable since AutoCAD Release 9 (1987) with no known revisions.

Published specification: https://web.archive.org/web/20191223211310/http://www.autodesk.com/techpubs/autocad/acadr14/dxf/slide_file_format_al_u05_b.htm

Applications which use this media: AutoCAD (Autodesk, 1984-present) created and displayed slide files via the MSLIDE and VSLIDE commands. The netpbm toolkit provides conversion to portable bitmap formats via sldtoppm. The Pillow imaging library (via the pillow-netpbm plugin) provides read support in Python. The format is of interest to digital preservation projects for archival access to legacy CAD data.

Fragment identifier considerations: N/A - single static images with no addressable internal structure

Restrictions on usage: N/A - no restrictions

Additional information:

1. Deprecated alias names for this type: application/sld, application/x-sld, image/x-sld
2. Magic number(s): AutoCAD\x20Slide\r\n\x1a\x00
3. File extension(s): sld
4. Macintosh file type code: N/A
5. Object Identifiers: N/A

General Comments: The unregistered types application/sld, application/x-sld, and image/x-sld appear in the PRONOM file format registry (x-fmt/105) and derived projects. This registration is intended to provide a canonical type to replace them. Note that application/sld may be confused with OGC Styled Layer Descriptor (application/vnd.ogc.sld+xml), which is a distinct XML-based format occasionally marked as application/x-sld.

Person to contact for further information:

1. Name: Gareth Davidson
2. Email: gaz&bitplane.net

Intended usage: LIMITED USE

Used only in older versions of AutoCAD, but it has not been replaced by a later format.

Author/Change controller: Autodesk, Inc. (registered on their behalf by Gareth Davidson)
