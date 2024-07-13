package com.example.Assignment3.service;

import com.example.Assignment3.dao.UserDao;
import com.example.Assignment3.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class UserService {
    @Autowired
    private UserDao userDao;
    public String signUp(String email, String password, Model model) {
        // sign-up
        User user = userDao.findByEmail(email);
        if (user == null){
            User newUser = new User();
            newUser.setEmail(email);
            newUser.setPassword(password);
            userDao.save(newUser);
            return "member";
        }else{
            model.addAttribute("error","Email already exist!");
            return "home";
        }
    }
    public String signIn(String email, String password, Model model) {
        //sign-in
        User user = userDao.findByEmail(email);
        if(!(user== null) && user.getPassword().equals(password)){
            return "member";
        }else{
            model.addAttribute("error","Invalid password or email!");
            return "home";
        }
    }
    public void deleteUser(String email) {
        if (!(email ==null)){
            userDao.deleteByEmail(email);
        }

    }
}
