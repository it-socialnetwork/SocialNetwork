package com.socialnetwork.vywatch.Repository;

import java.util.List;

import com.socialnetwork.vywatch.Model.ListSubject;
import com.socialnetwork.vywatch.Model.User;
import com.socialnetwork.vywatch.Model.UserSubject;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ListSubjectRepository extends JpaRepository<ListSubject, Long> {

    @Query("from ListSubject")
    List<ListSubject> find();
        
    
}