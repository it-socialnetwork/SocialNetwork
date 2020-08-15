package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long>{
    @Query("SELECT pseudo FROM User  WHERE pseudo = ?1")
    User findUserByPseudo(String pseudo);
}