package org.zhangy.mybbs.service;

import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.Praise;
import org.zhangy.mybbs.entity.User;

import java.util.List;

/**
 * Created by zy on 2017/4/15.
 */
public interface PraiseService {
    Praise get(String id);

    void saveOrDelete(Praise praise);

    void delete(String id);

    List<Praise> findAll();

    Praise findCondition(User user, Content content);
}
