package com.example.PlayRoulette.services;

import com.example.PlayRoulette.dtos.*;
import com.example.PlayRoulette.exceptions.InvalidCasinoException;
import com.example.PlayRoulette.exceptions.InvalidGameException;
import com.example.PlayRoulette.exceptions.UserNotFoundException;
import com.example.PlayRoulette.exceptions.WrongStatusUpdateException;
import com.example.PlayRoulette.entity.*;
import com.example.PlayRoulette.repository.BetRepository;
import com.example.PlayRoulette.repository.DealerRepository;
import com.example.PlayRoulette.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import static com.example.PlayRoulette.messages.ErrorMessages.INVALID_CASINO;

@Service
public class DealerServiceImpl implements DealerService{

    @Autowired
    DealerRepository dealerRepo;
    @Autowired
    UtilService utilService;
    @Autowired
    BetService betService;
    @Autowired
    UserService userService;
    @Autowired
    UserRepository userRepository;
    @Autowired
    CasinoService casinoService;
    @Autowired
    BetRepository betRepository;
    @Autowired
    GameService gameService;
    @Autowired
    CasinoDealerRelationShipService casinoDealerRelationShipService;

    @Override
    public Dealer addDealer(DealerDto dealerDto){
        Dealer dealer = new Dealer();
        dealer.setDealerName(dealerDto.getDealerName());
        return dealerRepo.save(dealer);
    }

    @Override
    public void addDealerToCasino(DealerDto dealerDto) throws InvalidCasinoException {
        Dealer dealer = new Dealer();
        dealer.setDealerName(dealerDto.getDealerName());
        Dealer savedDealer = dealerRepo.save(dealer);
        Casino casino = casinoService.findCasinoByCasinoId(dealerDto.getCasinoId());
        if(casino==null){
            throw new InvalidCasinoException(INVALID_CASINO);
        }
        casinoDealerRelationShipService.saveRelationShip(savedDealer,casino);
    }

    @Override
    public List<Dealer> getDealersByCasinoId(Long casinoId) {
        List<Dealer> allDealersByCasino = new ArrayList<>();
        for(CasinoDealerRelationShip relationShip :  casinoDealerRelationShipService.getDealersByCasinoId(casinoId)){
            if(relationShip.getCasino().getCasinoId()==casinoId){
                allDealersByCasino.add(relationShip.getDealer());
            }
        }
        return allDealersByCasino;
    }

    /**
     * Assumptions : once the ball has been thrown and bets has won
     *    all the bets data is no longer required for this particular game so it will be
     *    dumped after this computation ends.
     * @param gameId
     * @return
     */
    @Override
    public List<Long> throwBall(Long gameId) {
        int winningNumber = utilService.generateRandomNumber();
        List<Bet> allBets= betService.getAllBetsWithGameId(gameId);
        List<Long> betIds = new ArrayList<>();
        List<Long> winningUsers = new ArrayList<>();
        for(Bet bet : allBets){
            betIds.add(bet.getBetId());
            RechargeUserRequestDto rechargeUserRequestDto = new RechargeUserRequestDto();
            RechargeCasinoRequestDto rechargeCasinoRequestDto = new RechargeCasinoRequestDto();

            rechargeUserRequestDto.setUserId(bet.getUserId());
            rechargeCasinoRequestDto.setCasinoId(bet.getCasinoId());

            if(bet.getBetNumber()==winningNumber){
                rechargeUserRequestDto.setRechargeAmount(2*bet.getAmount());
                rechargeCasinoRequestDto.setRechargeAmount((-1)* bet.getAmount());
                winningUsers.add(bet.getUserId());
            }
            try {
                userService.rechargeUserBalance(rechargeUserRequestDto);
            } catch (UserNotFoundException e) {
                System.out.println(e.getMessage());
            }
            bet.setBetStatus(true);
            betRepository.save(bet);
            casinoService.rechargeBalance(rechargeCasinoRequestDto);
        }

        betService.deleteAllBetsForGameId(betIds);
        return winningUsers;
    }

    @Override
    public Dealer findByDealerId(Long dealerId) {
        return dealerRepo.getById(dealerId);
    }

    @Override
    public boolean changeStatusOfGame(StatusChangeReqDto statusDto) throws WrongStatusUpdateException, InvalidGameException {
            return  gameService.changeStatusOfGame(statusDto);
    }

    @Override
    public Long addNewGame(GameDto gameDto) {
       Game game = gameService.addNewGame(gameDto);
       return game.getGameId();
    }
}
