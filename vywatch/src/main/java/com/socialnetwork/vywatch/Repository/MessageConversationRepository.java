package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.MessageConversation;

import org.springframework.data.jpa.repository.JpaRepository;
public interface MessageConversationRepository extends JpaRepository<MessageConversation, Long> {
    
}
