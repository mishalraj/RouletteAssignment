package com.example.PlayRoulette.dtos;

import lombok.Data;

@Data
public class BetDataDto {
     private int betNumber;
     private Long amount;
     private Long userId;
     private Long gameId;
     private Long casinoId;
}
