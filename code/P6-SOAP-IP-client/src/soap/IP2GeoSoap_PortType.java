/**
 * IP2GeoSoap_PortType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package soap;

public interface IP2GeoSoap_PortType extends java.rmi.Remote
{

    /**
     * Use a License Key of 0 for Testing
     */
    public soap.IPInformation resolveIP(java.lang.String ipAddress, java.lang.String licenseKey) throws java.rmi.RemoteException;
}
