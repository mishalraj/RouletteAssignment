package com.example.PlayRoulette.dtos;

import lombok.Data;

@Data
public class RechargeUserRequestDto {
    private Long userId;
    private double rechargeAmount;

    public RechargeUserRequestDto() {
    }
    public RechargeUserRequestDto(Long userId, double rechargeAmount) {
        this.userId = userId;
        this.rechargeAmount = rechargeAmount;
    }
}
