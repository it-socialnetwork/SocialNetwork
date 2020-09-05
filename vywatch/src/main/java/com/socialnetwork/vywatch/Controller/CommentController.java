package com.socialnetwork.vywatch.Controller;

import com.socialnetwork.vywatch.Model.JwtRequest;
import com.socialnetwork.vywatch.Repository.CommentRepository;
import com.socialnetwork.vywatch.Repository.UserRepository;
import com.socialnetwork.vywatch.Service.JwtUserDetailsService;
import com.socialnetwork.vywatch.util.JwtTokenUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

import com.socialnetwork.vywatch.Model.Comment;
@RestController
@RequestMapping("vywatch/api/comment")
@CrossOrigin(origins="*", allowedHeaders="*")
public class CommentController {

    @Autowired
    private UserRepository ur;

    @Autowired
    private CommentRepository cm;
    @PostMapping(value="/createComm/{pseudo}")
    public ResponseEntity<Comment> CreatePost(
        @RequestBody Comment comm,  @PathVariable String pseudo){
        Comment commentSave = new Comment();
        int idUser = ur.findIduser(pseudo);
        commentSave = comm;
        commentSave.setIduser(idUser);
        cm.saveComm(commentSave.getTextcomment(), commentSave.getIdpost(), commentSave.getIduser());
        return new ResponseEntity<Comment>(HttpStatus.OK ); 
    }
 
}