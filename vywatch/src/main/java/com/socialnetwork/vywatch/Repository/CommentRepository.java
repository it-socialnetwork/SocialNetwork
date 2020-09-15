package com.socialnetwork.vywatch.Repository;

import java.util.List;

import com.socialnetwork.vywatch.Model.Comment;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CommentRepository extends JpaRepository<Comment, Long> {


    @Query(value="select  comment.* from comment where ?1 = comment.idpost order by comment.datecomment",nativeQuery = true)
    List<Comment> getAll(int idPost);
}