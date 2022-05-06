package com.example.PlayRoulette.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
public class Dealer implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "dealer_id", nullable = false)
    private Long dealerId;

    @Column(name = "dealer_name", nullable = false)
    private String dealerName;
}
