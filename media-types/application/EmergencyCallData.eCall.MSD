MIME media type name:  application

MIME subtype name:  EmergencyCallData.eCall.MSD

Mandatory parameters:  none

Optional parameters:  none

Encoding scheme:  binary

Encoding considerations:
Uses ASN.1 PER, which is a binary encoding; when transported in
SIP, binary content transfer encoding is used.

Security considerations:
This media type is designed to carry vehicle and incident-
related data during an emergency call.  This data contains
personal information including vehicle VIN, location,
direction, etc.  Appropriate precautions need to be taken to
limit unauthorized access, inappropriate disclosure to third
parties, and eavesdropping of this information.  Sections 9 and
10 of [RFC7852] contain more discussion.

Interoperability considerations:   None

Published specification:   Annex A of EN 15722 [MSD]

Applications which use this media type:
Pan-European eCall compliant systems

Additional information:   None

Magic Number:   None

File Extension:   None

Macintosh file type code:   BINA

Person and email address for further information:
Randall Gellens, rg+ietf&randy.pensive.org

Intended usage:   LIMITED USE

Author:   The MSD specification was produced by the European
Committee For Standardization (CEN).  For contact information,
please see <http://www.cen.eu/cen/Pages/contactus.aspx>.
    
Change controller:   The European Committee For Standardization
(CEN)
