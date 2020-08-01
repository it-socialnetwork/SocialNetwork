package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.UserSubject;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserSubjectRepository extends JpaRepository<UserSubject, Long> {
    
}