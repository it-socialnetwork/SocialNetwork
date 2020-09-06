package com.socialnetwork.vywatch.Repository;



import com.socialnetwork.vywatch.Model.Comment;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CommentRepository extends JpaRepository<Comment, Long> {

}