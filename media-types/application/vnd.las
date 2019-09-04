(registered 2019-08-21, last updated 2019-08-21)

Type name:
application

Subtype name:
vnd.las

Required parameters:
N/A

Optional parameters:
N/A

Encoding considerations:
Binary: This media type requires encoding on transports not capable of handling binary

Security considerations:
LAS utilizes a structure that can store arrays of point cloud data and metadata corresponding to this point cloud data. The fields defined in the LAS format are of a descriptive nature and provide information that may be useful to facilitate viewing, rendering, and cataloging of data by a recipient. As such, the fields currently defined in the LAS format do not in and of themselves create additional security risks, since the fields are not used to induce any behavior by the recipient application.

However, LAS has an extensible structure, supporting both extensions defined and standardized by ASPRS and vendor-defined extensions, thus presenting additional security risks. It is thus possible that data embedded in a LAS file could be used to induce actions on the part of the recipient, either through a well-defined and known software capability, or as a result of malware or other malicious exploitation.

It should be noted that many LAS data producers will include additional extensions that specify metadata fields specifying confidentiality markings, access rights and handling of the data, including requirements if the file is to be maintained in a secure environment. In this case the intention is that alteration or removal of this metadata from the file would be treated as an offense under national or international law, as would be removing the file from a secure environment. While LAS does not include the ability within itself to encrypt the contents, end-to-end encryption (e.g., HTTPS, TLS, SSL) should be used when transmitting files that include sensitive data or where access is restricted. Once received, these sensitive files should also be encrypted at rest using storage-based encryption mechanisms.

LAS does not include compression for the data defined directly within the specification. However, a vendor defined extension could include the capability to compress the data, and thus processing of the data could consume significantly more resources than might be assumed solely based on the compressed size of the data file.

Interoperability considerations:
All data defined within the LAS specification itself is stored in little endian byte order. However, while discouraged, it is possible that data in a vendor defined extension might use a different byte ordering or encoding.

Referenced to published specification:
American Society for Photogrammetry and Remote Sensing (ASPRS): The Imaging and Geospatial Information Society
https://www.asprs.org/wp-content/uploads/2010/12/LAS_1_4_r13.pdf

Application usage:
The LAS file is intended to contain LIDAR (or other) point cloud data records. The data will generally be put into this format from software (e.g. provided by LIDAR hardware vendors) which combines GPS, IMU, and laser pulse range data to produce X, Y, and Z point data. The intention of the data format is to provide an open format that allows different LIDAR hardware and software tools to output data in a common format.

Fragment identifier considerations:
N/A

Restrictions on usage:
N/A

Additional information:
   Magic number:
   “LASF” in first four bytes of the file (0x4c, 0x41, 0x53, 0x46)

   File extension:
   .las

Intended usage:
LIMITED USE
For the transmission and indication of Point Cloud Data (typically LiDAR-based, but also from other sources) in the ASPRS' LAS format.

Contact name:
Bryan Blank

Contact email:
ntbchair&nga.mil

Author/change controller:
National Imagery Transmission Format Technical Board
Geospatial-Intelligence Standards Working Group
NGA National Center for Geospatial Intelligence Standards (NCGIS)
Mail Stop N32
7500 GEOINT Drive
Springfield, VA 22150
USA