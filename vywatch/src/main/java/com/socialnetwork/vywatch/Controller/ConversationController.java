package com.socialnetwork.vywatch.Controller;

import java.util.List;
import java.util.Random;

import com.socialnetwork.vywatch.Model.Conversation;
import com.socialnetwork.vywatch.Model.MessageConversation;
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
@RequestMapping("vywatch/api/conversation")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ConversationController {
    @Autowired
    private ConversationRepository ConversationRepository;
    @PostMapping(value="/addconv")
    public ResponseEntity<Conversation> CreateConversation(@RequestBody Conversation conversation){
        
        ConversationRepository.save(conversation);
        return new ResponseEntity<Conversation>(HttpStatus.OK);
    }

    @GetMapping(value="/getidconv")
    public Conversation GetIdConversation(){
        boolean notfind=false;
        String idconv="";
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
        int longueur = alphabet.length();
        while(notfind==false)
        {
            Random rand = new Random();
            for(int i = 0; i < 10; i++) {
                int k = rand.nextInt(longueur);
                idconv=idconv+Character.toString(alphabet.charAt(k));
            }  
            if(ConversationRepository.SearchExistIdconv(idconv)==null)
            {
                notfind=true;
            }  
        }
        Conversation conversation=new Conversation();
        conversation.setIdconversation(idconv);
        return conversation;
    }
}
