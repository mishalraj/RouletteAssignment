package com.example.PlayRoulette.repository;

import com.example.PlayRoulette.entity.CasinoDealerRelationShip;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CasinoDealerRelationShipRepo  extends JpaRepository<CasinoDealerRelationShip,Long>, CrudRepository<CasinoDealerRelationShip,Long> {
    List<CasinoDealerRelationShip> findAllByCasinoCasinoId(Long casinoId);
}
