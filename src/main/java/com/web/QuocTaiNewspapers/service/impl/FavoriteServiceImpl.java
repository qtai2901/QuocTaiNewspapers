package com.web.QuocTaiNewspapers.service.impl;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.web.QuocTaiNewspapers.dao.FavoriteDAO;
import com.web.QuocTaiNewspapers.entity.Favorite;
import com.web.QuocTaiNewspapers.service.FavoriteService;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	@Autowired
	FavoriteDAO fdao;

	@Override
	public List<Favorite> findAll() {
		return fdao.findAll();
	}

	@Override
	public Optional<Favorite> findById(Long id) {
		return fdao.findById(id);
	}

	@Override
	public void delete(Favorite entity) {
		fdao.delete(entity);
	}

	@Override
	public <S extends Favorite> S save(S entity) {
		return fdao.save(entity);
	}
	
}
