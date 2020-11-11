package dk.dd.kafkaproducer1.producer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/kafka")
public class ProducerController
{
      @Autowired
      private ProducerService service;
      
      @Autowired
      private ProducerServiceCallBack serviceCallBack;
      
      // Option 1:
      @PostMapping(value = "/message/{message}")
      public String sendMyMessageToKafka(@PathVariable("message") String message)
      {
            service.sendMessage(message);
            return "Message published: " + message;
      }
      
      // Option 2: Sending message with an async callback
      @PostMapping(value = "/message/callback/{message}")
      public String sendMyMessageCallBack(@PathVariable("message") String message)
      {
            serviceCallBack.sendMessageCallBack(message);
            return "Message published: " + message;
      }
}
