package com.example.PlayRoulette.services;

import com.example.PlayRoulette.dtos.BetDataDto;
import com.example.PlayRoulette.dtos.RechargeCasinoRequestDto;
import com.example.PlayRoulette.dtos.RechargeUserRequestDto;
import com.example.PlayRoulette.entity.Bet;
import com.example.PlayRoulette.entity.Casino;
import com.example.PlayRoulette.entity.Game;
import com.example.PlayRoulette.exceptions.InsufficientBalanceException;
import com.example.PlayRoulette.exceptions.InvalidBetException;
import com.example.PlayRoulette.exceptions.InvalidGameException;
import com.example.PlayRoulette.exceptions.UserNotFoundException;
import com.example.PlayRoulette.repository.BetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

import static com.example.PlayRoulette.messages.ErrorMessages.*;

@Service
public class BetServiceImpl implements BetService{

    @Autowired
    BetRepository betRepository;

    @Autowired
    UserService userService;

    @Autowired
    GameService gameService;

    @Autowired
    CasinoService casinoService;

    @Override
    public void placeBet(BetDataDto betData) throws InvalidGameException, InsufficientBalanceException, UserNotFoundException, InvalidBetException {
        Game game = gameService.findGameById(betData.getGameId());
        if(game==null){
            throw new InvalidGameException(INVALID_GAME);
        }
        // checking before placing a bet the end and start time of a game
        Date currentDate = new Date();
        if(game.getStartTime().getTime()> currentDate.getTime() ){
            throw new InvalidGameException(GAME_NOT_STARTED_USER);
        }
        else if(game.getEndTime().getTime()<currentDate.getTime()){
            throw new InvalidGameException(GAME_ENDED_USER);
        }
        if(!isValidBetNumber(betData)){
            throw new InvalidBetException(INVALID_BET_NUMBER);
        }
        List<Bet> allBets = betRepository.findAllByGameId(betData.getGameId());
        int amountOwedByCasino=0;

        // checking all the bets for the same betNumber so that we can calculate the maxAmount
        // owed by casino in case current bet number wins
        if(allBets!=null || !allBets.isEmpty()){
            for(Bet bet: allBets){
                if(bet.getBetNumber()== betData.getBetNumber()){
                    amountOwedByCasino += bet.getAmount();
                }
            }
        }
        amountOwedByCasino += betData.getAmount();

        Bet bet = new Bet();
        Casino casino = casinoService.findCasinoByCasinoId(betData.getCasinoId());
        if(casino.getBalanceAmount() >= amountOwedByCasino) {
            bet.setBetNumber(betData.getBetNumber());
            bet.setAmount(betData.getAmount());
            bet.setBettingTime(new Date());
            bet.setBetStatus(false);
            bet.setGameId(betData.getGameId());
            bet.setUserId(bet.getUserId());
            betRepository.save(bet);
            casinoService.rechargeBalance(new RechargeCasinoRequestDto(casino.getCasinoId(),betData.getAmount()));
            userService.rechargeUserBalance(new RechargeUserRequestDto(betData.getUserId(),(-1)*betData.getAmount()));
        }
        else{
            if((amountOwedByCasino- betData.getAmount())< casino.getBalanceAmount()){
                throw new InsufficientBalanceException(INVALID_BET_AMOUNT
                        + (amountOwedByCasino- betData.getAmount() - casino.getBalanceAmount()));
            }
            else {
                throw new InsufficientBalanceException(INSUFFICIENT_BALANCE_CASINO);
            }
        }
    }

    @Override
    public List<Bet> getAllBetsWithGameId(Long gameId) {
        return betRepository.findAllByGameId(gameId);
    }

    @Override
    public void deleteAllBetsForGameId(List<Long> betIds) {
        betRepository.deleteAllById(betIds);
    }

    private boolean isValidBetNumber(BetDataDto betDataDto){
        return betDataDto.getBetNumber() >= 1 && betDataDto.getBetNumber() <= 36;
    }
}
