package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.Users;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UsersRepository extends JpaRepository<Users, Long>{
    
}