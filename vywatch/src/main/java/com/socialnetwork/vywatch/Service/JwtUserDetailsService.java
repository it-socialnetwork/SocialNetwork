package com.socialnetwork.vywatch.Service;

import java.util.ArrayList;

import com.socialnetwork.vywatch.Model.User;
import com.socialnetwork.vywatch.Repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import org.springframework.stereotype.Service;

@Service
public class JwtUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository repository;
    @Override
    
    public UserDetails loadUserByUsername(String pseudo) throws UsernameNotFoundException {
        User user = repository.findByPseudo(pseudo);
        return new org.springframework.security.core.userdetails.User(user.getPseudo(), user.getPassword(), new ArrayList<>());
    }
    
}