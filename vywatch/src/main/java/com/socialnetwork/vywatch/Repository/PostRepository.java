package com.socialnetwork.vywatch.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.socialnetwork.vywatch.Model.Post;


public interface PostRepository extends JpaRepository<Post, Long>{
    
}
