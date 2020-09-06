package com.socialnetwork.vywatch.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

import com.socialnetwork.vywatch.Model.Post;



public interface PostRepository extends JpaRepository<Post, Long>{
    

    @Query(value="select distinct post.* from post, usersubject, listsubject, team where ?1 = userSubject.pseudo and usersubject.Namesub = listsubject.Namesub and listsubject.Namesub = team.Namesub and team.idteam = post.idteam",nativeQuery = true)
    List<Post> findPosts(String pseudo);


}
