package com.web.QuocTaiNewspapers;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.web.QuocTaiNewspapers.config.StorageProperties;

@EnableConfigurationProperties(StorageProperties.class)
@SpringBootApplication
public class TechNetApplication {

	public static void main(String[] args) {
		SpringApplication.run(TechNetApplication.class, args);
	}

}
