package com.socialnetwork.vywatch.Controller;

import java.util.List;

import com.socialnetwork.vywatch.Model.ListSubject;

import com.socialnetwork.vywatch.Repository.ListSubjectRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("vywatch/api/listSubject")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ListSubjectController {
    @Autowired
    private ListSubjectRepository ListSubjectRepository;

    @GetMapping(value="/allSubject")
    public List<ListSubject> getAllSubject(){
       List<ListSubject>  u= ListSubjectRepository.findAll();
        return u;
    }
  
    
  
}