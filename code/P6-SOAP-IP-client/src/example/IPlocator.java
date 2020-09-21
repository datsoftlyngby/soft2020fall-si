package example;

import soap.*;
import org.apache.log4j.BasicConfigurator;

public class IPlocator
{
  public static void main(String[] arg)
  {
      IPInformation soap;
      String ip = arg[0];
      String city;
      try {
          IP2GeoLocator locator = new IP2GeoLocator();
          IP2GeoSoap_PortType service = locator.getIP2GeoSoap();

          // If authorization is required
          //((IP2GeoSoap_BindingStub)service).setUsername("user3");
          //((IP2GeoSoap_BindingStub)service).setPassword("pass3");

          // invoke business method
          soap = service.resolveIP(ip, "mykey");

          if ((city = soap.getCity()) == null || city.isEmpty()) city = "unknown city";
          System.out.println("The IP " + ip +  " is located in " + city + ", " + soap.getCountry());
      }
      catch (javax.xml.rpc.ServiceException ex)
      {
          ex.printStackTrace();
      }
      catch (java.rmi.RemoteException ex)
      {
          ex.printStackTrace();
      }
  }
}
