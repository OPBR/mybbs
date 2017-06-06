package org.zhangy.mybbs.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.Praise;
import org.zhangy.mybbs.entity.User;

import java.util.List;

/**
 * Created by zy on 2017/4/15.
 */
public interface PraiseDao extends JpaRepository<Praise, String>{
    @Query("from Praise p where p.user = :user and p.content = :content")
    public Praise findByContentIn(@Param("user")User user, @Param("content")Content content);
}
