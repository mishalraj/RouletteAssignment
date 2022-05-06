package com.example.PlayRoulette.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
public class Casino implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "casino_id", nullable = false)
    private Long casinoId;

    @Column(name = "casino_name", nullable = false)
    private String casinoName;

    @Column(name = "balance_amount", nullable = false)
    private double balanceAmount;
}
