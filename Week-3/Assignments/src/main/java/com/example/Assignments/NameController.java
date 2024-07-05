package com.example.Assignments;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;

@Controller
public class NameController {
    @GetMapping("/myName")
    public String myPage(@CookieValue(value = "name",required = false) String name, Model model){
        if(name!=null && !name.isEmpty()){
            model.addAttribute("name",name);
            return "welcome" ;
        }else {
            return "redirect:/trackName";
        }
    }
    @GetMapping("/trackName")
    public String trackNamePage(@RequestParam(value = "name", required = false) String name, HttpServletResponse response){
        if(name != null && !name.isEmpty()){
            Cookie cookie = new Cookie("name", name);
            cookie.setMaxAge(10); // set as 10 sec
            response.addCookie(cookie);
            return "redirect:/myName";
        }
        return "trackName";
    }
}
