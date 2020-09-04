package com.socialnetwork.vywatch.Controller;

import com.socialnetwork.vywatch.Model.Post;
import com.socialnetwork.vywatch.Repository.PostRepository;
import com.socialnetwork.vywatch.Repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/post")
@CrossOrigin(origins="*", allowedHeaders="*")

public class PostController {
    @Autowired
    private PostRepository pr;
    @Autowired
    private UserRepository ur;


    //Create post
    @PostMapping(value="/createPost/{pseudo}/{idTeam}")
    public ResponseEntity<Post> CreatePost(@RequestBody Post post, @PathVariable int idTeam,  @PathVariable String pseudo){
        Post postSave = new Post();
        int idUser = ur.findIduser(pseudo);
        postSave = post;
        postSave.setIduser(idUser);
        postSave.setIdteam(idTeam);
        pr.save(post);
        return new ResponseEntity<Post>(HttpStatus.OK ); 
    }

}
