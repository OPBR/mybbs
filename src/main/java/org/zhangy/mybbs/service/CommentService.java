package org.zhangy.mybbs.service;

import org.zhangy.mybbs.entity.Comment;
import org.zhangy.mybbs.entity.Content;

import java.util.List;

/**
 * Created by zy on 2017/4/10.
 */
public interface CommentService {
    public Comment get(String id);

    public void saveOrUpdate(Comment comment);

    public void delete(String id);

    public List<Comment> findAll();

    public List<Comment> findContent(Content content);

}
