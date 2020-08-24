package com.socialnetwork.vywatch.Controller;

import java.util.List;

import com.socialnetwork.vywatch.Model.ListSubject;
import com.socialnetwork.vywatch.Model.UserSubject;
import com.socialnetwork.vywatch.Repository.ListSubjectRepository;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/listSubject")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ListSubjectController {
    @Autowired
    private ListSubjectRepository ListSubjectRepository;

    @GetMapping("/allSubject/{pseudo}")
    public ListSubject getAllSubject(@PathVariable String pseudo){
       User u= (User) ListSubjectRepository.idUser(pseudo);
      ListSubject ls = ListSubjectRepository.displayListSubject(
              ((com.socialnetwork.vywatch.Model.User) u).getId_user());
      return ls;
    }
}