package de.hsh.vis.buildserverdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class BuildserverdemoApplication {

	@RequestMapping("/")
	public String helloWorld(){
		return "Hello Buildservers! "; //It's Travis CI!
	}

	public static void main(String[] args) {
		SpringApplication.run(BuildserverdemoApplication.class, args);
	}

}
