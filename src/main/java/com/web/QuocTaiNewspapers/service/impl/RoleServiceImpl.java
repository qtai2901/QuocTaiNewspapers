package com.web.QuocTaiNewspapers.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.QuocTaiNewspapers.dao.RoleDAO;
import com.web.QuocTaiNewspapers.entity.Role;
import com.web.QuocTaiNewspapers.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	RoleDAO rdao;

	@Override
	public List<Role> findAll() {
		return rdao.findAll();
	}

}
