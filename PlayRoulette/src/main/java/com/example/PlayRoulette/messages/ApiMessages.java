package com.example.PlayRoulette.messages;

public interface ApiMessages {
    //USER_MESSAGES
    String USER_ENTER_CASINO = "Casino set for user as casinoId : ";
    String UPDATE_BALANCE = "Placed Bet , updated balance after placing bet : ";
    String PLACING_BET = "Updated Balance of user after betting : ";


    //DEALER_MESSAGES
    String DEALER_ADD_TO_CASINO = "Dealer Added to casino successfully";
    String GAME_OPEN = "Game started by dealer open for betting ";
    String GAME_CLOSE = "Game closed by dealer ";
    String ADD_GAME = "Game added by dealer successfully ";

}
