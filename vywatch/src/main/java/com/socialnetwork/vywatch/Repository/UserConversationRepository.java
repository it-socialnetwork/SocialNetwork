package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.UserConversation;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserConversationRepository extends JpaRepository<UserConversation,Long>{
    
}
