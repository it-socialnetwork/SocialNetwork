package com.socialnetwork.vywatch.Controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

import com.socialnetwork.vywatch.Model.Post;
import com.socialnetwork.vywatch.Repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/post")
@CrossOrigin(origins="*", allowedHeaders="*")

public class PostController {
    @Autowired
    private PostRepository pr;

    @GetMapping(value="/displayAllPost/{pseudo}")
    public List<Post> displayPost( @PathVariable String pseudo){
        List<Post> s = pr.findPosts(pseudo);
        return s;
    }


    @GetMapping(value="/getOne/{idpost}")
    public Post getOne( @PathVariable int idpost){
        return pr.getOne(idpost);
    }
   
 

}
