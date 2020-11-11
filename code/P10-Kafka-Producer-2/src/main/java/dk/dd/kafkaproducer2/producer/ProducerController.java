package dk.dd.kafkaproducer2.producer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.web.bind.annotation.*;
import dk.dd.kafkaproducer2.model.Customer;

@RestController
@RequestMapping("/kafka")
public class ProducerController
{
      @Autowired
      private ProducerService service;
      
      //@PostMapping(value = "/customer/{id}/{name}")
      @PostMapping(value = "/customer", consumes = MediaType.APPLICATION_JSON_VALUE)
      public String sendMyObject(@RequestBody Customer  customer)
      {
            customer.getId();
            customer.getName();
            service.sendObject(customer);
            return "Customer published: " + customer.getName();
      }
}
