package com.example.PlayRoulette.dtos;

import lombok.Data;

import java.util.Date;

@Data
public class GameDto {
    private String gameName;
    private Long dealerId;
    private Long casinoId;
    private Date startTime;
    private Date endTime;
}
