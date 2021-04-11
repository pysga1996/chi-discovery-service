package com.vengeance.chi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class ChiRegistrationServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(ChiRegistrationServiceApplication.class, args);
    }

}
