package com.web.QuocTaiNewspapers.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.web.QuocTaiNewspapers.entity.Favorite;

@Repository
public interface FavoriteDAO extends JpaRepository<Favorite, Long> {


}
