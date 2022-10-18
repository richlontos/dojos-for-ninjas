package com.cornbreadandbeans.dojosforninjas;

import org.apache.catalina.connector.Connector;
import org.apache.coyote.ajp.AbstractAjpProtocol;
import org.apache.tomcat.util.json.ParseException;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.annotation.Bean;

import java.io.IOException;
import java.util.List;


@SpringBootApplication
public class DojosForNinjasApplication {



    public static void main(String[] args) throws IOException, InterruptedException, ParseException {
//        callApi ac = new callApi();
//        Object homes =  ac.callApi();
//        System.out.println(homes);
//
//
        SpringApplication.run(DojosForNinjasApplication.class, args);
    }


        @Bean
        public TomcatServletWebServerFactory servletContainer () {
            TomcatServletWebServerFactory tomcat = new TomcatServletWebServerFactory();
            Connector ajpConnector = new Connector("AJP/1.3");
            ajpConnector.setPort(9090);
            ajpConnector.setSecure(false);
            ajpConnector.setAllowTrace(false);
            ajpConnector.setScheme("http");
            ((AbstractAjpProtocol) ajpConnector.getProtocolHandler()).setSecretRequired(false);
            tomcat.addAdditionalTomcatConnectors(ajpConnector);
            return tomcat;
        }
    }



