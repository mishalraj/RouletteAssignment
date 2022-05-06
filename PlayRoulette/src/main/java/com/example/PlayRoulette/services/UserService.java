package com.example.PlayRoulette.services;

import com.example.PlayRoulette.exceptions.InsufficientBalanceException;
import com.example.PlayRoulette.exceptions.InvalidCasinoException;
import com.example.PlayRoulette.exceptions.UserNotFoundException;
import com.example.PlayRoulette.dtos.BetDataDto;
import com.example.PlayRoulette.dtos.RechargeUserRequestDto;
import com.example.PlayRoulette.entity.User;

import java.util.List;

public interface UserService {
    User registerUser(User user);

    String enterCasino(Long userId, Long casinoId) throws InvalidCasinoException;

    double rechargeUserBalance(RechargeUserRequestDto rechargeCasinoRequestDto) throws UserNotFoundException;

    String placeBet(BetDataDto betData) throws UserNotFoundException, InsufficientBalanceException;

    String cashOut(Long userId) throws UserNotFoundException;

    List<String> getListOfBettableGames(Long userId,Long casinoId) throws InvalidCasinoException;
}
