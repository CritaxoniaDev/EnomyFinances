package com.enfinance.service;

import com.enfinance.entity.SavingsAndInvestments;
import com.enfinance.entity.User;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

public interface SavingsAndInvestmentsService {
	Map<String, Object> calculateInvestment(String investmentType, BigDecimal initialInvestment,
			BigDecimal monthlyInvestment);

	SavingsAndInvestments saveInvestment(User user, String investmentType, BigDecimal initialInvestment,
			BigDecimal monthlyInvestment, Map<String, Object> calculations);

	List<SavingsAndInvestments> getUserInvestments(User user);
}
