package com.example.PlayRoulette.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Data
public class Bet implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "bet_id", nullable = false)
    private Long betId;

    @Column(name = "bet_number", nullable = false)
    private int betNumber;

    @Column(name = "amount", nullable = false)
    private Long amount;

    @Column(name = "betting_time",nullable = false)
    private Date bettingTime;

    @Column(name = "user",nullable = false)
    private Long userId;

    @Column(name = "game",nullable = false)
    private Long gameId;

    @Column(name = "casino_id",nullable = false)
    private Long casinoId;

    @Column(name = "bet_status",nullable = true)
    private boolean betStatus;
}
