(last updated 2009-02-19)

Name : Steve Hattersley

Email : steve.hattersley&dolby.com

MIME media type name : Audio

MIME subtype name : Vendor Tree - vnd.dolby.mps

Required parameters : None

Optional parameters :
level

Provides detail of the MPEG surround level number implemented within the encoded 
content, or within a decoder if used as an indicator of supported content.

====================================================
       | Max num. | Downmix  | Maximum    | Can use
 Value | Output   | Channels | Sampling   | Residual
       | Channels |          | Rate [kHz] | Data
=======|==========|==========|============|=========
   1   |   2.0    | Mono,    |   48       |  No
       |          | Stereo   |            |
-------|----------|----------|------------|---------
   2   |   5.1    | Mono,    |   48       |  No
       |          | Stereo   |            |
-------|----------|----------|------------|---------
   3   |   5.1    | Mono,    |   48       |  Yes
       |          | Stereo   |            |
-------|----------|----------|------------|---------
   4   |   7.1    | Mono,    |   48       |  Yes
       |          | Stereo   |            |
-------|----------|----------|------------|---------
       |          | Mono,    |            |  
   5   |   7.1    | Stereo,  |   48       |  Yes
       |          | 5.1      |            |
-------|----------|----------|------------|---------
       | 32 incl. | Mono,    |            |  
   6   |    LFE   | Stereo,  |   96       |  Yes
       |          | 5.1      |            |
====================================================

Encoding considerations : binary
This media type may require encoding on transports not capable of handling binary.

Security considerations :
This media type consists of encoded audio and playback information and contains no 
executable content, commands or control sequences. It provides no privacy or 
integrity services. Other security considerations, if any, have not been assessed.

Interoperability considerations :
Playback of this encoded content requires a specification-compliant decoder.

Published specification :
ISO/IEC 23003-1: MPEG Surround

Applications which use this media :
Various and multiple content encoding and decoding/playback applications.

Additional information :

1. Magic number(s) : n/a
2. File extension(s) : n/a
3. Macintosh file type code : n/a
4. Object Identifiers: n/a



Person to contact for further information :

1. Name : Steve Hattersley
2. Email : steve.hattersley&dolby.com

Intended usage : Limited Use
This media type is intended for use by those licensing and implementing Dolby 
technologies on mobile devices; specifically to provide mobile handset manufacturers 
with a media type that may be used in User Agent Profiles (UAProfs) in the mobile 
eco-system without being misinterpreted. In User Agent Profiles, this media type 
identifies clients and/or devices that are able to process content encoded to the 
MPEG Surround standard by Dolby encoding software, or that implement Dolby MPEG 
Surround decoders, including in both cases support for any Dolby-specific additions 
or metadata.

Author/Change controller : Steve Hattersley [steve.hattersley&dolby.com]

(file created 2009-02-19)