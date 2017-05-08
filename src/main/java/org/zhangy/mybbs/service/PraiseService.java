package org.zhangy.mybbs.service;

import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.Praise;
import org.zhangy.mybbs.entity.User;

import java.util.List;

/**
 * Created by DELL on 2017/4/15.
 */
public interface PraiseService {
    public Praise get(String id);

    public void saveOrDelete(Praise praise);

    public void delete(String id);

    public List<Praise> findAll();

    public Praise findCondition(User user, Content content);
}
