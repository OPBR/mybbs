package org.zhangy.mybbs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zhangy.mybbs.dao.PraiseDao;
import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.Praise;
import org.zhangy.mybbs.entity.User;
import org.zhangy.mybbs.service.PraiseService;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by zy on 2017/4/15.
 */
@Service
@Transactional
public class PraiseServiceImpl implements PraiseService{

    @Autowired
    private PraiseDao praiseDao;

    public Praise get(String id) {
        return praiseDao.findOne(id);
    }

    public void saveOrDelete(Praise praise) {
        praiseDao.save(praise);
    }

    public void delete(String id) {
        praiseDao.delete(id);
    }

    public List<Praise> findAll() {
        return praiseDao.findAll();
    }

    public Praise findCondition(User user, Content content) {
        return praiseDao.findByContentIn(user,content);
    }

}
