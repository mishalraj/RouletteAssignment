package com.example.PlayRoulette.services;

import com.example.PlayRoulette.dtos.GameDto;
import com.example.PlayRoulette.exceptions.InvalidCasinoException;
import com.example.PlayRoulette.exceptions.InvalidGameException;
import com.example.PlayRoulette.exceptions.WrongStatusUpdateException;
import com.example.PlayRoulette.entity.Dealer;
import com.example.PlayRoulette.dtos.DealerDto;
import com.example.PlayRoulette.dtos.StatusChangeReqDto;

import java.util.List;

public interface DealerService {
    Dealer addDealer(DealerDto dealer);

    void addDealerToCasino(DealerDto dealer) throws InvalidCasinoException;

    List<Dealer> getDealersByCasinoId(Long casinoId);

    List<Long> throwBall(Long gameId);

    Dealer findByDealerId(Long dealerId);

    boolean changeStatusOfGame(StatusChangeReqDto statusDto) throws WrongStatusUpdateException, InvalidGameException;

    Long addNewGame(GameDto gameDto);
}
