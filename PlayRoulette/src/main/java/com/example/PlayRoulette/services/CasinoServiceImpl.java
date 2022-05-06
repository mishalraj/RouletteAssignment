package com.example.PlayRoulette.services;

import com.example.PlayRoulette.entity.Casino;
import com.example.PlayRoulette.dtos.CasinoDataDto;
import com.example.PlayRoulette.dtos.RechargeCasinoRequestDto;
import com.example.PlayRoulette.repository.CasinoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.logging.Logger;

@Service
public class CasinoServiceImpl implements CasinoService{

    @Autowired
    CasinoRepository casinoRepository;
    @Autowired
    CasinoDealerRelationShipService casinoDealerRelationShipService;
    @Autowired
    DealerService dealerService;

    private static final Logger logger = Logger.getLogger(CasinoServiceImpl.class.getName());

    @Override
    public Casino registerCasino(CasinoDataDto casinoDataDto) {
        Casino casino = new Casino();
        casino.setCasinoName(casinoDataDto.getCasinoName());
        casino.setBalanceAmount(casinoDataDto.getBalanceAmount());
        logger.info("saving  casino data ");
        return casinoRepository.save(casino);
    }


    @Override
    public double rechargeBalance(RechargeCasinoRequestDto rechargeCasinoRequestDto) {
        Casino casino =  casinoRepository.getById(rechargeCasinoRequestDto.getCasinoId());
        casino.setBalanceAmount(casino.getBalanceAmount() + rechargeCasinoRequestDto.getRechargeAmount());
        logger.info("balance amount :"+casino.getBalanceAmount());
        casinoRepository.save(casino);
        return casino.getBalanceAmount();
    }

    @Override
    public Casino findCasinoByCasinoId(Long casinoId) {
        return casinoRepository.findCasinoByCasinoId(casinoId);
    }

    @Override
    public List<Casino> getAllCasinos() {
        return casinoRepository.findAll();
    }

}
