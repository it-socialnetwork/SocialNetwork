package com.socialnetwork.vywatch.Controller;

import com.socialnetwork.vywatch.Model.User;
import com.socialnetwork.vywatch.Repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/user")
@CrossOrigin(origins="*", allowedHeaders="*")
public class UserController {
    @Autowired
    private UserRepository Up;
   
    @PostMapping(value="/creatuser")
    public User createUsers(@RequestBody User user){
        User u = new User();
        u = user;
        u.setFirstconnection(true);
        return Up.save(u);
    }

}