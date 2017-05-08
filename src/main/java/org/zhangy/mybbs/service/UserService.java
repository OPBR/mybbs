package org.zhangy.mybbs.service;

import org.zhangy.mybbs.entity.User;

import java.util.List;

/**
 * Created by DELL on 2017/4/10.
 */
public interface UserService {
    public User get(String id);

    public void saveOrUpdate(User user);

    public void delete(String id);

    public List<User> findAll();

    public User findName(String username);

    public User findPhone(String phone);

    public User findVerify(String username, String password);
}
