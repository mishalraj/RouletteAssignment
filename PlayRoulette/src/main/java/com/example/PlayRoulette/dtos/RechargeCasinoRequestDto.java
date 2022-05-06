package com.example.PlayRoulette.dtos;

import lombok.Data;

@Data
public class RechargeCasinoRequestDto {
    private Long casinoId;
    private double rechargeAmount;

    public RechargeCasinoRequestDto() {
    }

    public RechargeCasinoRequestDto(Long casinoId, double rechargeAmount) {
        this.casinoId = casinoId;
        this.rechargeAmount = rechargeAmount;
    }
}
