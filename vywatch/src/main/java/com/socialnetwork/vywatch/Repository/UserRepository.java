package com.socialnetwork.vywatch.Repository;

import java.util.List;

import com.socialnetwork.vywatch.Model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long>{
    @Query("SELECT pseudo FROM User  WHERE pseudo = ?1")
    User findUserByPseudo(String pseudo);
    @Autowired
    @Query("from User u WHERE u.pseudo = ?1 AND u.password = ?2")
    User signIn(String idIdentifiant, String motDePasse);
    @Autowired
    User findByPseudo(String pseudo);
    @Query(value="select * from user  WHERE user.pseudo = ?1", nativeQuery = true)
    User getUser(String pseudo);
    @Query(value="select * from user", nativeQuery = true)
    List<User> getAllUser();
}