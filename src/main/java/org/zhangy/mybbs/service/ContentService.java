package org.zhangy.mybbs.service;

import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.User;

import java.util.List;

/**
 * Created by zy on 2017/4/10.
 */
public interface ContentService {
    Content get(String id);

    void saveOrUpdate(Content content);

    void delete(String id);

    List<Content> findAll();

    List<Content> findAllSort();

    List<Content> findAllByCount();

    List<Content> findByUser(User user);
}
