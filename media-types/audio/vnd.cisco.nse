

Name : Rajesh Kumar

E-mail : rkumar&cisco.com

MIME media type name : Audio

MIME subtype name : Vendor Tree - vnd.cisco.com

Required parameters : The "events" parameter lists the Cisco NSEs
(Named Signaling Events) supported by the implementation. Events are
listed as one or more comma-separated elements. Each element can
either be a single integer or two integers separated by a hyphen.
The range of these integers is 0-255. No white space is allowed in the
argument. The integers designate the Cisco NSE numbers supported by the
implementation.  Thus, events="192,194,200-202" indicates that the
Cisco NSEs supported by the implementation are 192, 194, 200, 201 and
202.  The "events" parameter can be represented in the  Session
Description Protocol (SDP, rfc2327)  and in  ITU-T recommendation
H.323/H.245  by the "fmtp"  attribute and the non-standard capability
field in the capability table respectively. When this is done, its
value is represented in a format that is identical in format to the
"events" MIME parameter. The encoding name used in conjunction with
this MIME is "X-NSE". The "X-" prefix results from the fact that this
encoding name is not defined in a standard.  Since the "events"
parameter is mandatory with this vendor MIME and encoding name,
there is no default list of events that can be assumed when this MIME
subtype is supported for a session or connection.


Optional parameters :
The "rate" parameter describes the sampling rate, in Hertz.
The number is written as an integer. If omitted, the default value is
8000 Hz. The rate parameter can be represented in the  Session
Description Protocol (SDP, rfc2327)  as one of the fields in the
"rtpmap"  attribute line.


Encoding considerations :
This MIME subtype is only defined for transfer via the Real Time
Protocol (RTP) as defined in rfc1889. As such, it consists of packets
of binary data. The packet format is the same as that for telephone
events in rfc2833. The difference from rfc2833 events is that this
MIME subtype  uses a separate name space for event numbers, with
semantics defined by Cisco.


Security considerations :
RTP packets using the payload format used for Cisco NSEs
defined in this specification are subject to the security
considerations discussed in the RTP specification (RFC 1889) and any
appropriate RTP profile (for example RFC 1890). This implies that
confidentiality of the media streams is achieved by encryption. 
Because the data compression used with this payload format is applied 
end-to-end, encryption may be performed after compression so there 
is no conflict between the two operations. This payload type does not
exhibit any significant non-uniformity in the receiver side
computational complexity for packet processing to cause a potential
denial-of-service threat. This MIME subtype contains no executable content.


Interoperability considerations :
For interoperability, the use of the Cisco NSE MIME subtype must comply
with internal Cisco documentation. For this the Cisco NSE MIME subtype,
Cisco reserves the right to control and change  the assignment of event
numbers to events. When used in conjunction with rfc2833 telephone events,
Cisco NSEs are assigned a dynamic payload type that is different
from that of the  rfc2833 telephone events.


> > Published specification :
> > None at this time. Cisco internal documentation available to
> partners
> > and customers. Contact name below.


Applications which use this media :
Voice over IP applications with value-adds provided by Cisco
solutions.

Additional information :

1. Magic number(s) : N/A
2. File extension(s) : N/A
3. Macintosh file type code : N/A
4. Object Identifiers: N/A

The volume and duration fields are generally set to 0. This is because
Cisco NSEs are generally used for state change signaling. In this case,
the volume and duration fields are not meaningful.

Redundant transmission of Cisco NSEs is along the lines of telephone
events as described in rfc2833. It is optional.

Person to contact for further information :

 1. Name : Rajesh Kumar
 2. E-mail : rkumar&cisco.com

Intended usage : Limited Use
Cisco NSEs are meant to be a value-add in applications that use Cisco
equipment. These are meant to SUPPLEMENT not SUPPLANT the rfc2833
events. These are used for state change signaling along the lines of
the AAL2 type 3 packets. Examples of the use of Cisco NSEs are:

Cisco NSE Number  :: Semantics
192 :: Shift to voiceband data mode
193 :: Disable echo cancellation
194 :: Shift to voice mode
200 :: Shift to fax relay mode
201 :: Positive acknowledgement of Cisco NSE
202 :: Negative acknowledgement of Cisco NSE

Author/Change controller : Rajesh Kumar
rkumar&cisco.com
Cisco Systems
170 West Tasman Drive
San Jose, CA 95134-1706

(created 2001 August 23)

[]







