package com.web.QuocTaiNewspapers.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.web.QuocTaiNewspapers.entity.Comment;

@Repository
public interface CommentDAO extends JpaRepository<Comment, Long> {

	// Page<Comment> findByUsernameContaining(String username, Pageable pageable);

}
