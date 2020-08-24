package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.ListSubject;
import com.socialnetwork.vywatch.Model.User;
import com.socialnetwork.vywatch.Model.UserSubject;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ListSubjectRepository extends JpaRepository<ListSubject, Long> {
    
    @Query("from ListSubject ls, User u, UserSubject us WHERE ?1 =  us.idUser_User AND  us.idListSub_listSubject = ls.idListSub_listSubject")
    ListSubject displayListSubject(int pseudo);

    @Query("from User u WHERE u.pseudo = ?1")
    User idUser(String pseudoUser);
}