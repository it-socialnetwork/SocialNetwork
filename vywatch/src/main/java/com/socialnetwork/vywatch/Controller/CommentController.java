package com.socialnetwork.vywatch.Controller;
import com.socialnetwork.vywatch.Repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.socialnetwork.vywatch.Model.Comment;
@RestController
@RequestMapping("vywatch/api/comment")
@CrossOrigin(origins="*", allowedHeaders="*")
public class CommentController {



    @Autowired
    private CommentRepository cm;
    @PostMapping(value="/createComm")
    public ResponseEntity<Comment> CreatePost(@RequestBody Comment comm){
        Comment commentSave = new Comment();
        commentSave = comm;
        cm.save(commentSave);
        return new ResponseEntity<Comment>(HttpStatus.OK ); 
    }
 
}