package com.web.QuocTaiNewspapers.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.web.QuocTaiNewspapers.entity.Statitics;
import com.web.QuocTaiNewspapers.model.StatisticalForMonthProjections;
import com.web.QuocTaiNewspapers.model.StatisticalForProductProjections;
import com.web.QuocTaiNewspapers.model.StatisticalForYearProjections;

@Service
public interface StatisticalService {

	Statitics SLOrder();

	List<StatisticalForProductProjections> statisticalForProduct();

	List<StatisticalForYearProjections> statisticalForYear();

	List<StatisticalForMonthProjections> statisticalForMonth();

}
