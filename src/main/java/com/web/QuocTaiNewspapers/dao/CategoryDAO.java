package com.web.QuocTaiNewspapers.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;
import com.web.QuocTaiNewspapers.entity.Category;

@Service
public interface CategoryDAO extends JpaRepository<Category, Long> {

	Page<Category> findByNameContaining(String name, Pageable pageable);

	long countByNameContaining(String name);
}
