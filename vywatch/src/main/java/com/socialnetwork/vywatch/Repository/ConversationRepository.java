package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.Conversation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ConversationRepository extends JpaRepository<Conversation,Long>{
    @Query(value="SELECT idconversation FROM conversation WHERE idconversation IN (?1)", nativeQuery = true)
    String SearchExistIdconv(String idconv);
}
