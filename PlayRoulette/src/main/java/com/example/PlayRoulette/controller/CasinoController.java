package com.example.PlayRoulette.controller;

import com.example.PlayRoulette.entity.Casino;
import com.example.PlayRoulette.dtos.CasinoDataDto;
import com.example.PlayRoulette.dtos.RechargeCasinoRequestDto;
import com.example.PlayRoulette.services.CasinoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/casino")
public class CasinoController {

    @Autowired
    CasinoService casinoService;

    @PostMapping(value="/register")
    public Casino registerCasino(@RequestBody CasinoDataDto casino){
        return casinoService.registerCasino(casino);
    }

    @PostMapping(value="/recharge")
    public String rechargeCasino(@RequestBody RechargeCasinoRequestDto rechargeCasinoRequestDto){
        return "Updated Balance : " + casinoService.rechargeBalance(rechargeCasinoRequestDto);
    }

    @GetMapping(value="/getAllCasino")
    public List<Casino> getAllCasinos(){
        return casinoService.getAllCasinos();
    }
}
