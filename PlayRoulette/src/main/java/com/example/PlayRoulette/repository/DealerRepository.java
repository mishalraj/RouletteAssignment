package com.example.PlayRoulette.repository;

import com.example.PlayRoulette.entity.Dealer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DealerRepository extends JpaRepository<Dealer,Long> {
}
