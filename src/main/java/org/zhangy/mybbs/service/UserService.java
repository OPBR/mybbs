package org.zhangy.mybbs.service;

import org.zhangy.mybbs.entity.User;

import java.util.List;

/**
 * Created by zy on 2017/4/10.
 */
public interface UserService {
    User get(String id);

    void saveOrUpdate(User user);

    void delete(String id);

    List<User> findAll();

    User findName(String username);

    User findPhone(String phone);

    User findVerify(String username, String password);

    User findByRealid(String realid);
}
