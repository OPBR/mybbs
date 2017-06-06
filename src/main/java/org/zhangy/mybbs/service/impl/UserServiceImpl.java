package org.zhangy.mybbs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zhangy.mybbs.dao.UserDao;
import org.zhangy.mybbs.entity.User;
import org.zhangy.mybbs.service.UserService;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by zy on 2017/4/10.
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public User get(String id) {
        return userDao.findOne(id);
    }

    public void saveOrUpdate(User user) {
        userDao.save(user);
    }

    public void delete(String id) {
        userDao.delete(id);
    }

    public List<User> findAll() {
        return userDao.findAll();
    }

    public User findName(String username) {
        return userDao.getByUsername(username);
    }

    public User findPhone(String phone) {
        return userDao.getByPhone(phone);
    }

    public User findVerify(String username, String password) {
        return userDao.findByUsernameAndPassword(username,password);
    }

    public User findByRealid(String realid) {
        return userDao.findByRealid(realid);
    }
}
