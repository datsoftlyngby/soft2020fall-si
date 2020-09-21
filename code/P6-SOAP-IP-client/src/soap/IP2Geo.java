/**
 * IP2Geo.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package soap;

public interface IP2Geo extends javax.xml.rpc.Service
{

/**
 * Our system uses a multiple sources for resolution.  Including a
 * host database, trace route information, and other systems.  Resolves
 * IP addresses to Organization, Country, City, and State/Province, Latitude,
 * Longitude.  In most US cities it will also provide some extra information
 * such as Area Code, and more.
 */
    public java.lang.String getIP2GeoSoapAddress();

    public soap.IP2GeoSoap_PortType getIP2GeoSoap() throws javax.xml.rpc.ServiceException;

    public soap.IP2GeoSoap_PortType getIP2GeoSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
    public java.lang.String getIP2GeoSoap12Address();

    public soap.IP2GeoSoap_PortType getIP2GeoSoap12() throws javax.xml.rpc.ServiceException;

    public soap.IP2GeoSoap_PortType getIP2GeoSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
