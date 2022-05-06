package com.example.PlayRoulette.services;

import com.example.PlayRoulette.entity.Casino;
import com.example.PlayRoulette.entity.CasinoDealerRelationShip;
import com.example.PlayRoulette.entity.Dealer;
import com.example.PlayRoulette.repository.CasinoDealerRelationShipRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CasinoDealerRelationShipServiceImpl implements CasinoDealerRelationShipService{
    @Autowired
    CasinoDealerRelationShipRepo casinoDealerRelationShipRepo;
    @Autowired
    CasinoService casinoService;
    @Autowired
    DealerService dealerService;

    @Override
    public void saveRelationShip(Dealer dealer, Casino casino) {
        CasinoDealerRelationShip casinoDealerRelationShip = new CasinoDealerRelationShip();
        casinoDealerRelationShip.setCasino(casino);
        casinoDealerRelationShip.setDealer(dealer);
        casinoDealerRelationShipRepo.save(casinoDealerRelationShip);
    }

    @Override
    public List<CasinoDealerRelationShip> getDealersByCasinoId(Long casinoId) {
        return casinoDealerRelationShipRepo.findAllByCasinoCasinoId(casinoId);
    }
}
