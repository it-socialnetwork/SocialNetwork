package com.socialnetwork.vywatch.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

import com.socialnetwork.vywatch.Model.Post;


public interface PostRepository extends JpaRepository<Post, Long>{
    

    @Query(value="select post.* from post, usersubject, listsubject, team where ?1 = userSubject.iduser and usersubject.idlist = listsubject.idlist and listsubject.idlist = team.idlist and team.idteam = post.idteam ",nativeQuery = true)
    List<Post> findPosts(int idUser);
}
