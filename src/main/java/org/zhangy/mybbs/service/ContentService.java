package org.zhangy.mybbs.service;

import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.User;

import java.util.List;

/**
 * Created by zy on 2017/4/10.
 */
public interface ContentService {
    public Content get(String id);

    public void saveOrUpdate(Content content);

    public void delete(String id);

    public List<Content> findAll();

    public List<Content> findAllSort();

    public List<Content> findAllByCount();

    public List<Content> findByUser(User user);
}
