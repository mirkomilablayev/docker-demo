package com.example.dockerdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/docker")
public class Controller {
    @GetMapping("/hello")
    public String helloFromDocker(){
        return "Hello from simple dockerize------------------";
    }
}
