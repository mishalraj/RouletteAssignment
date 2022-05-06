package com.example.PlayRoulette.messages;

public interface ErrorMessages {
    String INVALID_CASINO = "Not a valid Casino ID : ";
    String INVALID_USER = "User Not Registered : ";
    String USER_BALANCE_INSUFFICIENT = "User balance less than bet Amount , please recharge before placing bet";
    String WRONG_CASINO_FOR_USER = "Wrong casino Id , does not match with current casino for user";
    String INVALID_GAME = " Game not found , Invalid game exception ";
    String GAME_NOT_STARTED = " Game has not started yet please wait to change the status till : ";
    String GAME_NOT_STARTED_USER = " Game has not started yet please wait to place the bet till : ";
    String GAME_ENDED = " Game has not already ended , past the end time of game cannot start this game";
    String GAME_ENDED_USER = " Game has not already ended , past the end time of game cannot place a bet on this game";
    String INVALID_BET_NUMBER = "Cannot place bet on this number please place bet on a number between 1 - 36";
    String INVALID_BET_AMOUNT = "Cannot place bet for this amount , please place bet equal to or lower than ";
    String INSUFFICIENT_BALANCE_CASINO = "Cannot place bet for this casino for this number anymore , please place bet on another number";
    String INVALID_STATUS = " Same status update not allowed for a game ";
}
