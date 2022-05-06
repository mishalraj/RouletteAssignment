package com.example.PlayRoulette.services;


import com.example.PlayRoulette.entity.Casino;
import com.example.PlayRoulette.entity.CasinoDealerRelationShip;
import com.example.PlayRoulette.entity.Dealer;

import java.util.List;

public interface CasinoDealerRelationShipService {
    void saveRelationShip(Dealer dealer, Casino casino);

    List<CasinoDealerRelationShip> getDealersByCasinoId(Long casinoId);
}
