package com.example.PlayRoulette.dtos;

import lombok.Data;

@Data
public class StatusChangeReqDto {
    private boolean status;
    private Long gameId;
    private Long dealerId;
}
