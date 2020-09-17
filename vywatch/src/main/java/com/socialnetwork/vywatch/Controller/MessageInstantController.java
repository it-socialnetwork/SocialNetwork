package com.socialnetwork.vywatch.Controller;

import java.util.List;

import com.socialnetwork.vywatch.Model.Conversation;
import com.socialnetwork.vywatch.Repository.ConversationRepository;
import com.socialnetwork.vywatch.Repository.MessageConversationRepository;
import com.socialnetwork.vywatch.Repository.UserConversationRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/message")
@CrossOrigin(origins="*", allowedHeaders="*")
public class MessageInstantController {
    @Autowired
    private MessageConversationRepository MessageConversationRepository;
    @Autowired
    private ConversationRepository ConversationRepository;
    @Autowired
    private UserConversationRepository UserConversationRepository;

}
