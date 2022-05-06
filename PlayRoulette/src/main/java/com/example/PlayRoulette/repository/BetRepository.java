package com.example.PlayRoulette.repository;

import com.example.PlayRoulette.entity.Bet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BetRepository extends JpaRepository<Bet,Long> {
    List<Bet> findAllByGameId(Long gameId);
}
