package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long>{
    
}