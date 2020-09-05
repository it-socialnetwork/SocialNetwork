package com.socialnetwork.vywatch.Repository;



import com.socialnetwork.vywatch.Model.Comment;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CommentRepository extends JpaRepository<Comment, Long> {

    @Query(value= "insert INTO comment ( textcomment,  datecomment, idpost,  iduser) VALUES ( ?1, NOW() ,?2, ?3 )", nativeQuery = true)
    void saveComm(String text, int idpost, int iduser);
}