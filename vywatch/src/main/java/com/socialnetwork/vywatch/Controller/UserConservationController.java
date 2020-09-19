package com.socialnetwork.vywatch.Controller;

import java.util.List;
import java.util.Random;

import com.socialnetwork.vywatch.Model.Conversation;
import com.socialnetwork.vywatch.Model.MessageConversation;
import com.socialnetwork.vywatch.Model.UserConversation;
import com.socialnetwork.vywatch.Repository.ConversationRepository;
import com.socialnetwork.vywatch.Repository.MessageConversationRepository;
import com.socialnetwork.vywatch.Repository.UserConversationRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/userconversation")
@CrossOrigin(origins="*", allowedHeaders="*")
public class UserConservationController {
    @Autowired
    private UserConversationRepository UserConvRepository;

    @PostMapping(value="/adduserconv")
    public ResponseEntity<UserConversation> CreatUserConversation(@RequestBody UserConversation userConversation){
        UserConvRepository.save(userConversation);
        return new ResponseEntity<UserConversation>(HttpStatus.OK ); 
    }
}
