package com.example.PlayRoulette.controller;

import com.example.PlayRoulette.dtos.BetDataDto;
import com.example.PlayRoulette.dtos.RechargeUserRequestDto;
import com.example.PlayRoulette.entity.User;
import com.example.PlayRoulette.exceptions.InsufficientBalanceException;
import com.example.PlayRoulette.exceptions.InvalidCasinoException;
import com.example.PlayRoulette.exceptions.UserNotFoundException;
import com.example.PlayRoulette.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

import static com.example.PlayRoulette.messages.ApiMessages.PLACING_BET;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @PostMapping(value="/register")
    public User registerUser(@RequestBody User user){
       return userService.registerUser(user);
    }

    @PostMapping(value="/enterCasino/{userId}/{casinoId}")
    public String enterCasino(@PathVariable("userId") Long userId , @PathVariable("casinoId") Long casinoId){
        try {
            return userService.enterCasino(userId,casinoId);
        } catch (InvalidCasinoException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        }
    }

    @PostMapping(value="/recharge")
    public String rechargeUserBalance(@RequestBody RechargeUserRequestDto rechargeUserRequestDto){
        try {
            return "Updated Balance : " + userService.rechargeUserBalance(rechargeUserRequestDto);
        } catch (UserNotFoundException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        }
    }

    @GetMapping(value ="/getBettableGames/{userId}/{casinoId}")
    @ResponseBody
    public List<String> getListOfBettableGames(@PathVariable("userId") Long userId,@PathVariable("casinoId") Long casinoId){
        List<String> games = null;
        try {
            games = userService.getListOfBettableGames(userId,casinoId);
        } catch (InvalidCasinoException e) {
            System.out.println(e.getMessage());
        }
        if(games.isEmpty() || games == null){
            return new ArrayList<>();
        }
        return games;
    }

    @PostMapping(value="/bet")
    public String placeBet(@RequestBody BetDataDto betData){
        try {
            return PLACING_BET + userService.placeBet(betData);
        } catch (UserNotFoundException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        } catch (InsufficientBalanceException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        }
    }

    @PostMapping(value="/cashout/{userId}")
    public String cashOut(@PathVariable("userId") Long userId){
        try {
            return userService.cashOut(userId);
        } catch (UserNotFoundException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        }
    }
}
