package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.Conversation;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ConversationRepository extends JpaRepository<Conversation,Long>{
    
}
