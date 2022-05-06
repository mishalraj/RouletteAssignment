package com.example.PlayRoulette.services;

import org.springframework.stereotype.Service;

import java.util.Random;

@Service
public class UtilService {
    private final int MAX = 36;
    private final int MIN =1;

    public int generateRandomNumber(){
        Random rand = new Random();
        int randomNum = rand.nextInt((MAX - MIN) + 1) + MIN;
        return randomNum;
    }
}
