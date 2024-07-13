package com.example.Assignment3.controller;

import com.example.Assignment3.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/home")
    public String home() {
        return "home";
    }
    @PostMapping("/home")
    public String addUser(
            @RequestParam String email,
            @RequestParam String password,
            @RequestParam String btn,
            Model model){
        if (btn.equals("sign-up")){
            return userService.signUp(email, password, model);
        }else {
            return userService.signIn(email,password,model);
        }
    }

    @GetMapping("/member")
    public String member() {
        return "member";
    }
    @DeleteMapping("/delete")
    @ResponseBody
    public ResponseEntity<Void> deleteByEmail(@RequestParam String email) {
        userService.deleteUser(email);
        return ResponseEntity.noContent().build();
    }

}


