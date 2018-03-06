package org.zhangy.mybbs.service;

import org.zhangy.mybbs.entity.Comment;
import org.zhangy.mybbs.entity.Content;

import java.util.List;

/**
 * Created by zy on 2017/4/10.
 */
public interface CommentService {
    Comment get(String id);

    void saveOrUpdate(Comment comment);

    void delete(String id);

    List<Comment> findAll();

    List<Comment> findContent(Content content);

}
