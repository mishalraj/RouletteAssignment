package com.example.PlayRoulette.repository;

import com.example.PlayRoulette.entity.Game;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface GameRepository extends JpaRepository<Game,Long> , CrudRepository<Game,Long> {
    List<Game> getByStatusTrue();
    Game findGameByGameId(Long gameId);
}
