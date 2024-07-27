package com.web.QuocTaiNewspapers.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.web.QuocTaiNewspapers.entity.Role;

public interface RoleDAO extends JpaRepository<Role, String> {
	
}
