package com.example.PlayRoulette.controller;

import com.example.PlayRoulette.dtos.DealerDto;
import com.example.PlayRoulette.dtos.GameDto;
import com.example.PlayRoulette.dtos.StatusChangeReqDto;
import com.example.PlayRoulette.entity.Dealer;
import com.example.PlayRoulette.exceptions.InvalidCasinoException;
import com.example.PlayRoulette.exceptions.InvalidGameException;
import com.example.PlayRoulette.exceptions.WrongStatusUpdateException;
import com.example.PlayRoulette.services.DealerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.example.PlayRoulette.messages.ApiMessages.*;

@RestController
@RequestMapping("/dealer")
public class DealerController {

    @Autowired
    DealerService dealerService;

    @PostMapping(value="/add")
    public Dealer addDealer(@RequestBody DealerDto dealer){
        return dealerService.addDealer(dealer);
    }

    @PostMapping(value="/addToCasino")
    public String addDealerToCasino(@RequestBody  DealerDto dealer){
        try {
            dealerService.addDealerToCasino(dealer);
        } catch (InvalidCasinoException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        }
        return DEALER_ADD_TO_CASINO;
    }

    @GetMapping(value ="/getDealer/{casinoId}")
    @ResponseBody
    public List<Dealer> getDealersByCasinoId(@PathVariable("casinoId") Long casinoId){
        return dealerService.getDealersByCasinoId(casinoId);
    }

    @GetMapping(value = "/throwBall/{gameId}")
    @ResponseBody
    public List<Long> throwBall(@PathVariable("gameId") Long gameId) {
         return dealerService.throwBall(gameId);
    }

    @PostMapping(value = "/startOrStop")
    public String changeGameStatus(@RequestBody StatusChangeReqDto statusDto) {
        boolean newStatus = false;
        try {
            newStatus = dealerService.changeStatusOfGame(statusDto);
        } catch (WrongStatusUpdateException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        } catch (InvalidGameException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        }
        if (newStatus) {
            return GAME_OPEN;
        } else {
            return GAME_CLOSE;
        }
    }

    @PostMapping(value = "/addGame")
    public String addNewGame(@RequestBody GameDto gameDto) {
        return ADD_GAME + dealerService.addNewGame(gameDto);
    }
}

