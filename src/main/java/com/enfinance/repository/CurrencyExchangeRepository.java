package com.enfinance.repository;

import com.enfinance.entity.CurrencyExchange;
import com.enfinance.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CurrencyExchangeRepository extends JpaRepository<CurrencyExchange, Long> {
	
    List<CurrencyExchange> findByUserOrderByTransactionDateDesc(User user);
}
