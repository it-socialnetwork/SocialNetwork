package com.socialnetwork.vywatch.Controller;

import com.socialnetwork.vywatch.Model.Users;
import com.socialnetwork.vywatch.Repository.UsersRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users")


public class UsersController {
    @Autowired
    private UsersRepository Up;
   
    @PostMapping(value="/createUsers")
    public Users createUsers(@RequestBody Users users){
        Users u = new Users();
        u = users;
        u.setFirstconnection(true);
        return Up.save(u);
    }

}