package com.hansea;

import org.springframework.boot.SpringApplication;

public class TestHanseaApplication {

	public static void main(String[] args) {
		SpringApplication.from(HanseaApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
