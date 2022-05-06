package com.example.PlayRoulette.controller;

import com.example.PlayRoulette.dtos.RechargeCasinoRequestDto;
import com.example.PlayRoulette.entity.Casino;
import org.json.JSONObject;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

public class CasinoControllerTest extends AbstractTest {
    @Override
    @Before
    public void setUp() {
        super.setUp();
    }

    @Test
    public void createCasino() throws Exception {
        String uri = "/casino/register";
        Casino casino = new Casino();
        casino.setCasinoName("test_casino_1");
        casino.setBalanceAmount(22.22);
        String inputJson = super.mapToJson(casino);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        Assert.assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        JSONObject json = new JSONObject(content);

        Assert.assertEquals(json.get("casinoName"),"test_casino_1");
    }

    @Test
    public void rechargeCasino() throws Exception {
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

        String uriRecharge = "/casino/recharge";
        RechargeCasinoRequestDto rechargeCasinoRequestDto = new RechargeCasinoRequestDto();
        rechargeCasinoRequestDto.setCasinoId(convertedLong);
        rechargeCasinoRequestDto.setRechargeAmount(20);
        String inputJson = super.mapToJson(rechargeCasinoRequestDto);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uriRecharge)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int statusRecharge = mvcResult.getResponse().getStatus();
        Assert.assertEquals(200, statusRecharge);
        String contentRecharge = mvcResult.getResponse().getContentAsString();
        Assert.assertEquals(contentRecharge, "Updated Balance : 60.0");
    }
}
