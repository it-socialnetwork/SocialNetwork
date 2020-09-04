package com.socialnetwork.vywatch.Repository;

import com.socialnetwork.vywatch.Model.Team;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TeamRepository extends JpaRepository<Team, Long> {
    
}
