package com.example.PlayRoulette.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Data
public class Game implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "game_id", nullable = false)
    private Long gameId;

    @Column(name = "game_name", nullable = false,unique=true)
    private String gameName;

    @Column(name = "start_time", nullable = false)
    private Date startTime;

    @Column(name = "end_time", nullable = false)
    private Date endTime;

    @Column(name = "thrown_number",nullable = false)
    private int thrownNumber;

    @Column(name = "status",nullable = false)
    private boolean status;

    @Column(name = "casino_id", nullable = false)
    private Long casinoId;

    @Column(name = "dealer_id", nullable = false)
    private Long dealerId;
}
