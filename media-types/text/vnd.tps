(registered 2026-04-09, last updated 2026-04-09)

Media type name: text

Media subtype name: vnd.tps

Required parameters: N/A

Optional parameters: charset: UTF-8 (default). TPS files are always UTF-8 encoded text.

Encoding considerations: binary

Security considerations: TPS files contain plain text with markup tags for teleprompter presentation.
They do not contain executable content, scripts, or active code.
TPS files do not reference external resources (no URLs, no imports, no linked files).
Processing a TPS file does not require network access or file system access
beyond reading the file itself. There are no known security risks specific
to the TPS format beyond those inherent in processing any text file.

Interoperability considerations: TPS files are valid markdown — any markdown viewer can render them with
reasonable readability. TPS-specific tags ([emphasis], [slow], [loud], etc.)
appear as bracketed text in non-TPS-aware editors. The format is fully
specified at the canonical URL and has a reference implementation available
as an open-source npm package. All TPS files use UTF-8 encoding.

Published specification: https://tps.managed-code.com/
Source: https://github.com/managedcode/TPS

Applications which use this media: TPS (TelePrompterScript) is used by teleprompter applications to render
scripts with timing, pacing, emotional, and delivery cues for live spoken
presentation. The format supports hierarchical content organization
(segments, blocks, phrases), inline speed/volume/emphasis control,
emotion presets, pronunciation guides, and edit points for post-production.

Fragment identifier considerations: N/A

Restrictions on usage: N/A — the format is open and freely usable under CC BY 4.0 license.

Provisional registration? (standards tree only): No

Additional information:

1. Deprecated alias names for this type: N/A
2. Magic number(s): ---
3. File extension(s): .tps, .tps.md, .md.tps
4. Macintosh file type code: N/A
5. Object Identifiers: N/A

General Comments: TPS is an open-source format specification licensed under CC BY 4.0.
Repository: https://github.com/managedcode/TPS
Documentation site: https://tps.managed-code.com/
Version: 1.1.0

Person to contact for further information:

1. Name: Konstantin Semenenko
2. Email: ksemenenko&managed-code.com

Intended usage: COMMON

Author/Change controller: Konstantin Semenenko