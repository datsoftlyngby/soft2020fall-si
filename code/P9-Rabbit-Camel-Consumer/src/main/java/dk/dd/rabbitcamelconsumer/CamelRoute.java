package dk.dd.rabbitcamelconsumer;

import org.apache.camel.builder.RouteBuilder;
import org.apache.camel.support.jndi.JndiContext;
import org.springframework.stereotype.Component;

@Component
public class CamelRoute extends RouteBuilder
{

        @Override
        public void configure() throws Exception
        {
            dk.dd.rabbitcamelconsumer.MyTransformation mycase = new dk.dd.rabbitcamelconsumer.MyTransformation();
            JndiContext jndiContext = new JndiContext();
            jndiContext.bind("uppercase", new dk.dd.rabbitcamelconsumer.MyTransformation());


            from("rabbitmq:localhost:5672/myrabbitexchange?username=guest&password=guest&autoDelete=false&routingKey=camel&queue=myrabbitqueue")
                    .log("The original message is ${body}")
                    .bean(mycase , "toUpper")
                    .log("Transformed message is  ${body}")
                   // .transform(method("uppercase"))
             .to("file:data/file");
        }
}



