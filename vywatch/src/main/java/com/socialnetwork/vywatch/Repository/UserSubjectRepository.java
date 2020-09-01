package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.UserSubject;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserSubjectRepository extends JpaRepository<UserSubject, Long> {
    @Query(value="SELECT idusersub FROM usersubject ORDER BY idusersub DESC LIMIT 1", nativeQuery = true)
    int findlastId();
}