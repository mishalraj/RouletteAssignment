package com.example.PlayRoulette.services;

import com.example.PlayRoulette.dtos.BetDataDto;
import com.example.PlayRoulette.dtos.RechargeUserRequestDto;
import com.example.PlayRoulette.entity.User;
import com.example.PlayRoulette.exceptions.*;
import com.example.PlayRoulette.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.example.PlayRoulette.messages.ApiMessages.UPDATE_BALANCE;
import static com.example.PlayRoulette.messages.ApiMessages.USER_ENTER_CASINO;
import static com.example.PlayRoulette.messages.ErrorMessages.*;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    BetService betService;

    @Autowired
    CasinoService casinoService;

    @Autowired
    GameService gameService;

    @Override
    public User registerUser(User user) {
        return userRepository.save(user);
    }

    @Override
    public String enterCasino(Long userId, Long casinoId) throws InvalidCasinoException {
        if(casinoService.findCasinoByCasinoId(casinoId)==null){
            throw new InvalidCasinoException(INVALID_CASINO + casinoId);
        }
        User user = userRepository.getById(userId);
        user.setCurrentCasino(casinoId);
        userRepository.save(user);
        return USER_ENTER_CASINO + casinoId;
    }

    @Override
    public double rechargeUserBalance(RechargeUserRequestDto rechargeUserRequestDto) throws UserNotFoundException {
        User user = userRepository.getById(rechargeUserRequestDto.getUserId());
        if(user==null){
            throw new UserNotFoundException(INVALID_USER +rechargeUserRequestDto.getUserId());
        }
        double updatedBalance = user.getBalanceAmount()+ rechargeUserRequestDto.getRechargeAmount();
        user.setBalanceAmount(updatedBalance);
        userRepository.save(user);
        return updatedBalance;
    }

    @Override
    public String placeBet(BetDataDto betData) throws UserNotFoundException, InsufficientBalanceException {
        User user = userRepository.getById(betData.getUserId());
        if(user==null){
            throw new UserNotFoundException(INVALID_USER + betData.getUserId());
        }
        try {
            betService.placeBet(betData);
        } catch (InvalidGameException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        } catch (InvalidBetException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        }
        if(user.getBalanceAmount() >= betData.getAmount()){
            user.setBalanceAmount(user.getBalanceAmount()-betData.getAmount());
        }
        else{
            throw new InsufficientBalanceException(USER_BALANCE_INSUFFICIENT);
        }
        userRepository.save(user);
        return UPDATE_BALANCE + user.getBalanceAmount();
    }

    /**
     * assuming that cash-out will delete the user
     * from db and clear the record
     * @param userId
     * @return
     */

    @Override
    public String cashOut(Long userId) throws UserNotFoundException {
        User user = userRepository.getById(userId);
        if(user==null){
            throw new UserNotFoundException(INVALID_USER + userId);
        }
        double cashOutAmount =user.getBalanceAmount();
        userRepository.deleteById(userId);
        return String.valueOf(cashOutAmount);
    }

    @Override
    public List<String> getListOfBettableGames(Long userId,Long casinoId) throws InvalidCasinoException {
        User user = userRepository.getById(userId);
        if(user.getCurrentCasino()!=casinoId){
            throw new InvalidCasinoException(WRONG_CASINO_FOR_USER);
        }
        return gameService.getListOfBettableGames(casinoId);
    }
}
