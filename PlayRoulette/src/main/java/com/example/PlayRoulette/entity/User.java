package com.example.PlayRoulette.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "user_id", nullable = false)
    private Long userId;

    @Column(name = "user_name", nullable = false)
    private String userName;

    @Column(name = "balance_amount", nullable = true)
    private double balanceAmount;

    @Column(name = "current_casino", nullable = true)
    private Long currentCasino;
}
