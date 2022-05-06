package com.example.PlayRoulette.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class CasinoDealerRelationShip {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "relationship_id", nullable = false)
    private Long relationshipId;

    @ManyToOne
    @JoinColumn(name = "dealer_id")
    Dealer dealer;

    @ManyToOne
    @JoinColumn(name = "casino_id")
    Casino casino;
}
