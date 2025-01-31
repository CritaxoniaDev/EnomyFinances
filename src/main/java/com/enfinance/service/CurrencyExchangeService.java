package com.enfinance.service;

import com.enfinance.entity.CurrencyExchange;
import com.enfinance.entity.User;
import java.math.BigDecimal;
import java.util.List;

public interface CurrencyExchangeService {
	
	CurrencyExchange processExchange(User user, String fromCurrency, String toCurrency, BigDecimal amount,
			BigDecimal exchangeRate);

	List<CurrencyExchange> getUserExchangeHistory(User user);
}
