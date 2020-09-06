package com.socialnetwork.vywatch.Controller;
import com.socialnetwork.vywatch.Model.UserSubject;
import com.socialnetwork.vywatch.Repository.ListSubjectRepository;
import com.socialnetwork.vywatch.Repository.UserSubjectRepository;
import com.socialnetwork.vywatch.Repository.UserTeamRepository;
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
    private UserSubjectRepository UserSubjectRepo;

    @PostMapping(value="/addsubject")
    public ResponseEntity<UserSubject> AddSubjectUser(@RequestBody UserSubject UserSubect){
        UserSubject u = new UserSubject();
        u = UserSubect;
        System.out.println(UserSubect.getNamesub());
        UserSubjectRepo.save(u);
        return new ResponseEntity<UserSubject>(HttpStatus.OK); 
    }

}