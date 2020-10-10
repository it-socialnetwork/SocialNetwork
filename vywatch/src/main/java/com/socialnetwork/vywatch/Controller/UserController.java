package com.socialnetwork.vywatch.Controller;

import java.util.List;


import com.socialnetwork.vywatch.Model.User;
import com.socialnetwork.vywatch.Repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/user")
@CrossOrigin(origins="*", allowedHeaders="*")
public class UserController {
    @Autowired
    private UserRepository UserRepository;

    private PasswordEncoder PasswordEncoder;
   
    
   
    @PostMapping(value="/creatuser")
    public ResponseEntity<User> CreateUsers(@RequestBody User user){
        PasswordEncoder=new BCryptPasswordEncoder();
        String PWD=user.getPassword();
        user.setPassword(PasswordEncoder.encode(PWD));
        user.setFirstconnection(true);
        UserRepository.save(user);
        return new ResponseEntity<User>(HttpStatus.OK ); 
    }

    @GetMapping(value="/getuser/{pseudo}")
    public User getUser(@PathVariable String pseudo){
       return UserRepository.getUser(pseudo);
    }

    @GetMapping(value="/getalluser")
    public List<User> getUser(){
       return UserRepository.getAllUser();
    }


}