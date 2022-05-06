package com.example.PlayRoulette.services;

import com.example.PlayRoulette.exceptions.InsufficientBalanceException;
import com.example.PlayRoulette.exceptions.InvalidBetException;
import com.example.PlayRoulette.exceptions.InvalidGameException;
import com.example.PlayRoulette.entity.Bet;
import com.example.PlayRoulette.dtos.BetDataDto;
import com.example.PlayRoulette.exceptions.UserNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BetService {
    void placeBet(BetDataDto betData) throws InvalidGameException, InsufficientBalanceException, UserNotFoundException, InvalidBetException;

    List<Bet> getAllBetsWithGameId(Long gameId);

    void deleteAllBetsForGameId(List<Long> betIds);
}
