package com.enfinance.service;

import java.math.BigDecimal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class ExchangeRateService {
    private static final String API_KEY = "55ce012f6871b3f7aac4efea";
    private static final String API_URL = "https://api.exchangerate-api.com/v4/latest/";
    
    @Autowired
    private RestTemplate restTemplate;
    
    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
    
    public BigDecimal getExchangeRate(String fromCurrency, String toCurrency) {
        String url = API_URL + fromCurrency + "?access_key=" + API_KEY;
        
        try {
            @SuppressWarnings("rawtypes")
			ResponseEntity<Map> response = restTemplate.getForEntity(url, Map.class);
            @SuppressWarnings("unchecked")
			Map<String, Object> rates = (Map<String, Object>) response.getBody().get("rates");
            Double rate = (Double) rates.get(toCurrency);
            return BigDecimal.valueOf(rate);
        } catch (Exception e) {
            throw new RuntimeException("Error fetching exchange rate: " + e.getMessage());
        }
    }
}

