# PlayRoulette

- Java jdk 17 
- Spring 2.5.6
- mysql db 


All relevant sql commands are added in the  : resources -> static

Rest API included in this build are :
  Casino : register casino : POST http://localhost:8080/casino/register
           recharge balance of casino    : POST http://localhost:8080/casino/recharge
           get all casinos :  GET http://localhost:8080/casino//getAllCasino


  User : register : POST http://localhost:8080/user/register
         enter a casino : POST http://localhost:8080/user/enterCasino/{{userId}}/{{casinoId}}
         recharge balance : POST http://localhost:8080/user/recharge
         list bettable games : GET http://localhost:8080/user/getBettableGames/{userId}/{casinoId}
         bet on a game : POST http://localhost:8080/user/bet
         cash out : POST http://localhost:8080/user/cashout/{userId}
         
  dealer :  start game or stop game : POST http://localhost:8080/dealer/startOrStop
            throw ball : GET http://localhost:8080/dealer/throwBall/{{gameId}}
            add a game : POST http://localhost:8080/dealer/addGame
            get all dealers in a casino : GET http://localhost:8080/dealer/getDealer/{{casinoId}} 
            add a dealer : POST http://localhost:8080/dealer/add
            add a dealer to a casino : POST http://localhost:8080/dealer/addToCasino

          


// to run the unit test data base should be started.