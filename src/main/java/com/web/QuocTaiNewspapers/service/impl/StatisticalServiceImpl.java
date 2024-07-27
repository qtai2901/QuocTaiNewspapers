package com.web.QuocTaiNewspapers.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.web.QuocTaiNewspapers.dao.StatiticDAO;
import com.web.QuocTaiNewspapers.entity.Statitics;
import com.web.QuocTaiNewspapers.model.StatisticalForMonthProjections;
import com.web.QuocTaiNewspapers.model.StatisticalForProductProjections;
import com.web.QuocTaiNewspapers.model.StatisticalForYearProjections;
import com.web.QuocTaiNewspapers.service.StatisticalService;

@Service
public class StatisticalServiceImpl implements StatisticalService {

	@Autowired
	StatiticDAO sdao;

	@Override
	public Statitics SLOrder() {
		return sdao.SLOrder();
	}

	@Override
	public List<StatisticalForMonthProjections> statisticalForMonth() {
		return sdao.statisticalForMonth();
	}

	@Override
	public List<StatisticalForYearProjections> statisticalForYear() {
		return sdao.statisticalForYear();
	}

	@Override
	public List<StatisticalForProductProjections> statisticalForProduct() {
		return sdao.statisticalForProduct();
	}	
}
