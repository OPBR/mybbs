package org.zhangy.mybbs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zhangy.mybbs.dao.ContentDao;
import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.User;
import org.zhangy.mybbs.service.ContentService;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by DELL on 2017/4/10.
 */
@Service
@Transactional
public class ContentServiceImpl implements ContentService {

    @Autowired
    private ContentDao contentDao;

    public Content get(String id) {
        return contentDao.findOne(id);
    }

    public void saveOrUpdate(Content content) {
        contentDao.save(content);
    }

    public void delete(String id) {
        contentDao.delete(id);
    }

    public List<Content> findAll() {
        return contentDao.findAll();
    }

    public List<Content> findAllSort() {
        return contentDao.findContentAll();
    }

    public List<Content> findAllByCount() {
        return contentDao.findContentAllByCount();
    }

    public List<Content> findByUser(User user) {
        return contentDao.findByUser(user);
    }
}
