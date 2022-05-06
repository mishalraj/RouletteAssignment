package com.example.PlayRoulette.services;

import com.example.PlayRoulette.entity.Casino;
import com.example.PlayRoulette.dtos.CasinoDataDto;
import com.example.PlayRoulette.dtos.RechargeCasinoRequestDto;

import java.util.List;

public interface CasinoService {
    Casino registerCasino(CasinoDataDto casino);

    double rechargeBalance(RechargeCasinoRequestDto rechargeCasinoRequestDto);

    Casino findCasinoByCasinoId(Long casinoId);

    List<Casino> getAllCasinos();
}
