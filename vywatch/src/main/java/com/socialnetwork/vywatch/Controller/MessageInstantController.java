package com.socialnetwork.vywatch.Controller;

import java.util.List;

import com.socialnetwork.vywatch.Model.Conversation;
import com.socialnetwork.vywatch.Model.MessageConversation;
import com.socialnetwork.vywatch.Repository.ConversationRepository;
import com.socialnetwork.vywatch.Repository.MessageConversationRepository;


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
@RequestMapping("vywatch/api/message")
@CrossOrigin(origins="*", allowedHeaders="*")
public class MessageInstantController {
    @Autowired
    private MessageConversationRepository MessageConversationRepository;
    

    @PostMapping(value="/addmessage")
    public ResponseEntity<MessageConversation> CreateUsers(@RequestBody MessageConversation messageConversation){
        MessageConversationRepository.save(messageConversation);
        return new ResponseEntity<MessageConversation>(HttpStatus.OK);
    }
}
