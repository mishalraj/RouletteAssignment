package com.example.PlayRoulette.repository;

import com.example.PlayRoulette.entity.Casino;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CasinoRepository extends JpaRepository<Casino,Long> {
    Casino findCasinoByCasinoId(Long casinoId);
}
