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
    public String getData(@RequestParam(required = false) String number){
        if(number == null){
            return "Lack of Parameter";
        }
        try{
            int input = Integer.parseInt(number);
            if (input<0){
                return "Wrong Parameter";
            }else if(input==0){
                return "0";
            }
            int summation = input*(input+1)/2;
            return Integer.toString(summation);
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
