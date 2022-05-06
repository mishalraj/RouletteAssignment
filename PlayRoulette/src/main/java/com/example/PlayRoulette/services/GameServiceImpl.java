package com.example.PlayRoulette.services;

import com.example.PlayRoulette.dtos.GameDto;
import com.example.PlayRoulette.dtos.StatusChangeReqDto;
import com.example.PlayRoulette.entity.Game;
import com.example.PlayRoulette.exceptions.InvalidGameException;
import com.example.PlayRoulette.exceptions.WrongStatusUpdateException;
import com.example.PlayRoulette.repository.GameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import static com.example.PlayRoulette.messages.ErrorMessages.*;

@Service
public class GameServiceImpl implements GameService {

    @Autowired
    GameRepository gameRepository;

    @Autowired
    UtilService utilService;

    @Override
    public boolean changeStatusOfGame(StatusChangeReqDto statusDto) throws WrongStatusUpdateException, InvalidGameException {
        Game game = gameRepository.getById(statusDto.getGameId());
        Date currentDate = new Date();
        if(game.getStartTime().getTime()> currentDate.getTime() ){
            throw new InvalidGameException(GAME_NOT_STARTED + game.getStartTime());
        }
        else if(game.getEndTime().getTime()<currentDate.getTime()){
            throw new InvalidGameException(GAME_ENDED);
        }
        if(game.isStatus() == statusDto.isStatus()){
            throw new WrongStatusUpdateException(INVALID_STATUS);
        }
        game.setStatus(statusDto.isStatus());
        gameRepository.save(game);
        return statusDto.isStatus();
    }

    @Override
    public List<String> getListOfBettableGames(Long casinoId) {
        List<String> bettableGames = gameRepository.getByStatusTrue().stream()
                                    .filter(a->a.isStatus()==true)
                                    .filter(b->b.getCasinoId()==casinoId)
                                    .map(Game :: getGameName)
                                    .collect(Collectors.toList());
        return bettableGames;
    }

    @Override
    public Game findGameById(Long gameId) {
        return gameRepository.findGameByGameId(gameId);
    }

    @Override
    public Game addNewGame(GameDto gameDto) {
        Game game = new Game();
        game.setGameName(gameDto.getGameName());
        game.setCasinoId(gameDto.getCasinoId());
        game.setDealerId(gameDto.getDealerId());
        game.setStatus(false);
        game.setStartTime(gameDto.getStartTime());
        game.setEndTime(gameDto.getEndTime());
        return gameRepository.save(game);
    }
}
