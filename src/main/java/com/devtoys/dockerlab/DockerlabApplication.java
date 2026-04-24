package com.devtoys.dockerlab;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DockerlabApplication {

	private static final Logger log = LoggerFactory.getLogger(DockerlabApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(DockerlabApplication.class, args);
		log.info("DockerlabApplication started successfully.");
	}

}
