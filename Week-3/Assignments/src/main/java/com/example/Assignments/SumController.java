package com.example.Assignments;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SumController {
    @GetMapping("/")
    public String home(){
        return "Hello, welcome to Evelyn's server!";
    }
    @GetMapping("/data")
    public String getData(@RequestParam(required = false) Long number){
        if(number == null){
            return "Lack of Parameter";
        }
        try{
           if(number==0){
                return "0";
            }
            long summation = number*(number+1)/2;
            return String.valueOf(summation);
        }
        catch(NumberFormatException e){
            return "Wrong Parameter";
        }
    }
    @GetMapping("/sum")
    public String sumPage(){
        return "sum";
    }
}
