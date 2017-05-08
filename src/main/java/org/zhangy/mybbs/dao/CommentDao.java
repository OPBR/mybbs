package org.zhangy.mybbs.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.zhangy.mybbs.entity.Comment;
import org.zhangy.mybbs.entity.Content;

import java.util.List;

/**
 * Created by DELL on 2017/4/10.
 */
public interface CommentDao extends JpaRepository<Comment,String> {
    public List<Comment> findByContentOrderByCurrentDesc(Content content);
}
