<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://ws.cdyne.com/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://ws.cdyne.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Our system uses a multiple sources for resolution.  Including a host database, trace route information, and other systems.  Resolves IP addresses to Organization, Country, City, and State/Province, Latitude, Longitude.  In most US cities it will also provide some extra information such as Area Code, and more.</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://ws.cdyne.com/">
      <s:element name="ResolveIP">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ipAddress" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="licenseKey" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ResolveIPResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ResolveIPResult" type="tns:IPInformation" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="IPInformation">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="StateProvince" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Country" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Organization" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Latitude" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="Longitude" type="s:double" />
          <s:element minOccurs="0" maxOccurs="1" name="AreaCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TimeZone" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="HasDaylightSavings" type="s:boolean" />
          <s:element minOccurs="1" maxOccurs="1" name="Certainty" type="s:short" />
          <s:element minOccurs="0" maxOccurs="1" name="RegionName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CountryCode" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="IPInformation" nillable="true" type="tns:IPInformation" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="ResolveIPSoapIn">
    <wsdl:part name="parameters" element="tns:ResolveIP" />
  </wsdl:message>
  <wsdl:message name="ResolveIPSoapOut">
    <wsdl:part name="parameters" element="tns:ResolveIPResponse" />
  </wsdl:message>
  <wsdl:message name="ResolveIPHttpGetIn">
    <wsdl:part name="ipAddress" type="s:string" />
    <wsdl:part name="licenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ResolveIPHttpGetOut">
    <wsdl:part name="Body" element="tns:IPInformation" />
  </wsdl:message>
  <wsdl:message name="ResolveIPHttpPostIn">
    <wsdl:part name="ipAddress" type="s:string" />
    <wsdl:part name="licenseKey" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ResolveIPHttpPostOut">
    <wsdl:part name="Body" element="tns:IPInformation" />
  </wsdl:message>
  <wsdl:portType name="IP2GeoSoap">
    <wsdl:operation name="ResolveIP">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Use a License Key of 0 for Testing</wsdl:documentation>
      <wsdl:input message="tns:ResolveIPSoapIn" />
      <wsdl:output message="tns:ResolveIPSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="IP2GeoHttpGet">
    <wsdl:operation name="ResolveIP">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Use a License Key of 0 for Testing</wsdl:documentation>
      <wsdl:input message="tns:ResolveIPHttpGetIn" />
      <wsdl:output message="tns:ResolveIPHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="IP2GeoHttpPost">
    <wsdl:operation name="ResolveIP">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Use a License Key of 0 for Testing</wsdl:documentation>
      <wsdl:input message="tns:ResolveIPHttpPostIn" />
      <wsdl:output message="tns:ResolveIPHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="IP2GeoSoap" type="tns:IP2GeoSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="ResolveIP">
      <soap:operation soapAction="http://ws.cdyne.com/ResolveIP" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="IP2GeoSoap12" type="tns:IP2GeoSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="ResolveIP">
      <soap12:operation soapAction="http://ws.cdyne.com/ResolveIP" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="IP2GeoHttpGet" type="tns:IP2GeoHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="ResolveIP">
      <http:operation location="/ResolveIP" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="IP2GeoHttpPost" type="tns:IP2GeoHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="ResolveIP">
      <http:operation location="/ResolveIP" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="IP2Geo">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Our system uses a multiple sources for resolution.  Including a host database, trace route information, and other systems.  Resolves IP addresses to Organization, Country, City, and State/Province, Latitude, Longitude.  In most US cities it will also provide some extra information such as Area Code, and more.</wsdl:documentation>
    <wsdl:port name="IP2GeoSoap" binding="tns:IP2GeoSoap">
      <soap:address location="http://ws.cdyne.com/ip2geo/ip2geo.asmx" />
    </wsdl:port>
    <wsdl:port name="IP2GeoSoap12" binding="tns:IP2GeoSoap12">
      <soap12:address location="http://ws.cdyne.com/ip2geo/ip2geo.asmx" />
    </wsdl:port>
    <wsdl:port name="IP2GeoHttpGet" binding="tns:IP2GeoHttpGet">
      <http:address location="http://ws.cdyne.com/ip2geo/ip2geo.asmx" />
    </wsdl:port>
    <wsdl:port name="IP2GeoHttpPost" binding="tns:IP2GeoHttpPost">
      <http:address location="http://ws.cdyne.com/ip2geo/ip2geo.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>