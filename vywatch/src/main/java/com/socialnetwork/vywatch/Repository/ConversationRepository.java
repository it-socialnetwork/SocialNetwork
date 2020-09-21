package com.socialnetwork.vywatch.Repository;

import java.util.List;

import com.socialnetwork.vywatch.Model.Conversation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ConversationRepository extends JpaRepository<Conversation,Long>{
    @Query(value="SELECT idconversation FROM conversation WHERE idconversation IN (?1)", nativeQuery = true)
    String SearchExistIdconv(String idconv);

    @Query(value="SELECT conversation.idconversation, conversation.datecreatconv, conversation.datelastmessage FROM conversation INNER JOIN messageconversation ON conversation.idconversation=messageconversation.idconversation WHERE messageconversation.pseudo=?1", nativeQuery = true)
    List<Conversation> GetConvByPseudo(String pseudo);
}
