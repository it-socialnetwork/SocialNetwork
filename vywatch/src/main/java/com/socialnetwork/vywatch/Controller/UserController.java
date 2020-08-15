package com.socialnetwork.vywatch.Controller;

import com.socialnetwork.vywatch.Model.User;
import com.socialnetwork.vywatch.Repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/user")
@CrossOrigin(origins="*", allowedHeaders="http://localhost:4200/")
public class UserController {
    @Autowired
    private UserRepository UserRepository;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
   
    @PostMapping(value="/creatuser")
    public ResponseEntity<User> CreateUsers(@RequestBody User user){
        String PWD=user.getPassword();
        String encryptPWD=passwordEncoder.encode(PWD);
        user.setPassword(encryptPWD);
        user.setFirstconnection(true);
        UserRepository.save(user);
        return new ResponseEntity<User>(HttpStatus.OK ); 
    }

    @GetMapping(value="/getalluser")
    public Iterable<User> GetAllUsers(){
        Iterable<User> users=UserRepository.findAll();
        return users;
    }
    
    

}