(registered 2026-09-22, last updated 2026-09-22)

Media type name: text

Media subtype name: vnd.godot.gdshader

Required parameters: N/A

Optional parameters: N/A

Encoding considerations: 8bit

The default and recommended charset is UTF-8.

Security considerations: GDShader files have an extremely limited and sandboxed API. They are only executable after compiling with Godot and sending to the GPU, at which point it is limited to operations on the GPU.

GDScript files do not require privacy or integrity services. If integrity services are required, they must be provided externally, i.e. the format does not provide any integrity services.

GDScript files are plain text, expected to be viewed and edited with a text editor. They are not based on any existing container format.

GDShader files may reference other GDShader files, such as GDShader include files.

Interoperability considerations: N/A

Published specification: https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/shading_language.html

Applications which use this media: Godot Engine, an open source 2D and 3D game engine.

Fragment identifier considerations: N/A

Restrictions on usage: GDShader files are expected to have limited use outside of Godot Engine, and therefore other software is not encouraged to implement support for them.

Additional information:

1. Deprecated alias names for this type: application/x-godot-shader
2. Magic number(s): N/A
3. File extension(s): *.gdshader
4. Macintosh file type code: N/A
5. Object Identifiers: N/A

General Comments: The primary purpose of registering Godot-specific formats is to define them, providing documentation of their characteristics to non-Godot software, and provide a stable vendor-scoped MIME type going forward, that being `text/vnd.godot.gdshader` in this case. However, there is no expectation of other software adopting Godot-specific formats or adding support for loading them.

Person to contact for further information:

1. Name: Godot IANA Inbox
2. Email: iana&godotengine.org

Intended usage: LIMITED USE

GDShader files are expected to have limited use outside of Godot Engine, and therefore other software is not encouraged to implement support for them.

Author/Change controller: Godot Foundation
