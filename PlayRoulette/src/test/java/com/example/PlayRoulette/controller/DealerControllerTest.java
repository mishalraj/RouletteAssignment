package com.example.PlayRoulette.controller;

import com.example.PlayRoulette.dtos.DealerDto;
import com.example.PlayRoulette.dtos.GameDto;
import com.example.PlayRoulette.entity.Casino;
import com.example.PlayRoulette.entity.Dealer;
import org.json.JSONObject;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class DealerControllerTest  extends AbstractTest {
    @Override
    @Before
    public void setUp() {
        super.setUp();
    }

    @Test
    public void createDealer() throws Exception {
        String uri = "/dealer/add";
        Dealer dealer = new Dealer();
        dealer.setDealerName("test_dealer_1");
        String inputJson = super.mapToJson(dealer);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        Assert.assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        JSONObject json = new JSONObject(content);

        Assert.assertEquals(json.get("dealerName"),"test_dealer_1");
    }

    @Test
    public void addDealerToCasino() throws Exception {
        String uri = "/casino/register";
        Casino casino = new Casino();
        casino.setCasinoName("test_casino_2");
        casino.setBalanceAmount(40);
        String inputJsonRegister = super.mapToJson(casino);
        MvcResult mvcResultRegister = mvc.perform(MockMvcRequestBuilders.post(uri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJsonRegister)).andReturn();

        int status = mvcResultRegister.getResponse().getStatus();
        Assert.assertEquals(200, status);
        String content = mvcResultRegister.getResponse().getContentAsString();
        JSONObject json = new JSONObject(content);
        String stringToConvert = String.valueOf(json.get("casinoId"));
        Long convertedLong = Long.parseLong(stringToConvert);


        String dealerUri = "/dealer/addToCasino";
        DealerDto dealer = new DealerDto();
        dealer.setDealerName("test_dealer_1");
        dealer.setCasinoId(convertedLong);
        String inputJson = super.mapToJson(dealer);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(dealerUri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int dealerStatus = mvcResult.getResponse().getStatus();
        Assert.assertEquals(200, dealerStatus);
        String dealerContent = mvcResult.getResponse().getContentAsString();
        Assert.assertEquals(dealerContent,"Dealer Added to casino successfully");
    }

    @Test
    public void addGameTest() throws Exception {
        String uri = "/casino/register";
        Casino casino = new Casino();
        casino.setCasinoName("test_casino_2");
        casino.setBalanceAmount(40);
        String inputJsonRegister = super.mapToJson(casino);
        MvcResult mvcResultRegister = mvc.perform(MockMvcRequestBuilders.post(uri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJsonRegister)).andReturn();

        int status = mvcResultRegister.getResponse().getStatus();
        Assert.assertEquals(200, status);
        String content = mvcResultRegister.getResponse().getContentAsString();
        JSONObject json = new JSONObject(content);
        String stringToConvert = String.valueOf(json.get("casinoId"));
        Long convertedLong = Long.parseLong(stringToConvert);


        String dealerUri = "/dealer/addToCasino";
        DealerDto dealer = new DealerDto();
        dealer.setDealerName("test_dealer_1");
        dealer.setCasinoId(convertedLong);
        String inputJson = super.mapToJson(dealer);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(dealerUri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int dealerStatus = mvcResult.getResponse().getStatus();
        Assert.assertEquals(200, dealerStatus);
        String dealerContent = mvcResult.getResponse().getContentAsString();
        Assert.assertEquals(dealerContent,"Dealer Added to casino successfully");


        List<Dealer> dealerList = dealerRepository.findAll();
        Long dealerId = dealerList.get(0).getDealerId();

        String gameUri = "/dealer/addGame";
        GameDto game = new GameDto();
        game.setGameName("test_game_1");
        game.setCasinoId(convertedLong);
        game.setDealerId(dealerId);
        game.setStartTime(new Date());

        Date end = new Date();
        Calendar c = Calendar.getInstance();
        c.setTime(end);
        c.add(Calendar.DATE, 1);
        end = c.getTime();

        game.setEndTime(end);
        String gameInput = super.mapToJson(game);
        MvcResult gameResult = mvc.perform(MockMvcRequestBuilders.post(gameUri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(gameInput)).andReturn();

        int gameStatus = gameResult.getResponse().getStatus();
        Assert.assertEquals(200, gameStatus);
    }

    @Test
    public void getDealerList() throws Exception {
        String uri = "/casino/register";
        Casino casino = new Casino();
        casino.setCasinoName("test_casino_2");
        casino.setBalanceAmount(40);
        String inputJsonRegister = super.mapToJson(casino);
        MvcResult mvcResultRegister = mvc.perform(MockMvcRequestBuilders.post(uri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJsonRegister)).andReturn();

        int status = mvcResultRegister.getResponse().getStatus();
        Assert.assertEquals(200, status);
        String content = mvcResultRegister.getResponse().getContentAsString();
        JSONObject json = new JSONObject(content);
        String stringToConvert = String.valueOf(json.get("casinoId"));
        Long convertedLong = Long.parseLong(stringToConvert);


        String dealerUri = "/dealer/addToCasino";
        DealerDto dealer1 = new DealerDto();
        dealer1.setDealerName("test_dealer_1");
        dealer1.setCasinoId(convertedLong);
        String inputJson1 = super.mapToJson(dealer1);
        MvcResult mvcResult1 = mvc.perform(MockMvcRequestBuilders.post(dealerUri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson1)).andReturn();

        DealerDto dealer2 = new DealerDto();
        dealer2.setDealerName("test_dealer_2");
        dealer2.setCasinoId(convertedLong);
        String inputJson2 = super.mapToJson(dealer2);
        MvcResult mvcResult2 = mvc.perform(MockMvcRequestBuilders.post(dealerUri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson2)).andReturn();

        DealerDto dealer3 = new DealerDto();
        dealer3.setDealerName("test_dealer_3");
        dealer3.setCasinoId(convertedLong);
        String inputJson3 = super.mapToJson(dealer3);
        MvcResult mvcResult3 = mvc.perform(MockMvcRequestBuilders.post(dealerUri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson3)).andReturn();

        String getDealersUrl = "/dealer/getDealer/"+convertedLong;
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(getDealersUrl)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int statusGetDealers = mvcResult.getResponse().getStatus();
        Assert.assertEquals(200, statusGetDealers);
        String res = mvcResult.getResponse().getContentAsString();
        Dealer[] dealers = super.mapFromJson(res, Dealer[].class);
        Assert.assertTrue(dealers.length > 0);
    }
}
