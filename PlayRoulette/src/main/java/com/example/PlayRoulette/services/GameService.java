package com.example.PlayRoulette.services;

import com.example.PlayRoulette.dtos.GameDto;
import com.example.PlayRoulette.exceptions.InvalidGameException;
import com.example.PlayRoulette.exceptions.WrongStatusUpdateException;
import com.example.PlayRoulette.entity.Game;
import com.example.PlayRoulette.dtos.StatusChangeReqDto;

import java.util.List;

public interface GameService {
    boolean changeStatusOfGame(StatusChangeReqDto statusDto) throws WrongStatusUpdateException, InvalidGameException;

    List<String> getListOfBettableGames(Long casinoId);

    Game findGameById(Long gameId);

    Game addNewGame(GameDto gameDto);
}
