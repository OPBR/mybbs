package org.zhangy.mybbs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zhangy.mybbs.dao.CommentDao;
import org.zhangy.mybbs.entity.Comment;
import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.service.CommentService;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by DELL on 2017/4/10.
 */
@Service
@Transactional
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    public Comment get(String id) {
        return commentDao.findOne(id);
    }

    public void saveOrUpdate(Comment comment) {
        commentDao.save(comment);
    }

    public void delete(String id) {
        commentDao.delete(id);
    }

    public List<Comment> findAll() {
        return commentDao.findAll();
    }

    public List<Comment> findContent(Content content) {
        return commentDao.findByContentOrderByCurrentDesc(content);
    }
}
