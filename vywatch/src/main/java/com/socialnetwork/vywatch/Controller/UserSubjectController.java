package com.socialnetwork.vywatch.Controller;

import com.socialnetwork.vywatch.Model.ListUserSubect;
import com.socialnetwork.vywatch.Model.UserSubject;
import com.socialnetwork.vywatch.Repository.ListSubjectRepository;
import com.socialnetwork.vywatch.Repository.UserSubjectRepository;
import com.socialnetwork.vywatch.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/usersubject")
@CrossOrigin(origins="*", allowedHeaders="*")
public class UserSubjectController {
    @Autowired
    private UserSubjectRepository UserSubjectRepository;

    @Autowired
    private ListSubjectRepository ListSubjectRepository;

    @Autowired
    private UserRepository UserRepository;

    @PostMapping(value="/addsubject")
    public ResponseEntity<ListUserSubect> AddSubjectUser(@RequestBody ListUserSubect ListUserSubect){
        int iduser=UserRepository.findId(ListUserSubect.getPseudouser());
        int idlist=ListSubjectRepository.findidlist(ListUserSubect.getNamesubject());
        UserSubject userSubject = new UserSubject();
        userSubject.setIdlist(idlist);
        userSubject.setIduser(iduser);
        UserSubjectRepository.save(userSubject);
        return new ResponseEntity<ListUserSubect>(HttpStatus.OK ); 
    }

}