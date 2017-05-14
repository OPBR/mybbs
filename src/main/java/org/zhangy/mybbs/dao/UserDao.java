package org.zhangy.mybbs.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.zhangy.mybbs.entity.User;

/**
 * Created by DELL on 2017/4/10.
 */
public interface UserDao extends JpaRepository<User,String> {
    public User getByUsername(String username);
    public User getByPhone(String phone);
    public User findByUsernameAndPassword(String username, String password);
    public User findByRealid(String realid);
}
