package com.chd.service.impl;

import com.chd.mapper.UserMapper;
import com.chd.model.User;
import com.chd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther:zhangliang
 * @Date:2019/7/16
 * @Description:com.chd.service.impl
 * @version:1.0
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;


    @Override
    public User selUserById(int id) {
        return userMapper.selUserById(id);
    }

    @Override
    public void insUser(User user) {
        userMapper.insUser(user);
    }

    @Override
    public int selCount() {
        return userMapper.selCount();
    }

    @Override
    public List<User> selUsers() {
        return userMapper.selUsers();
    }
    @Override
    public void delUser(int id) {
        userMapper.delUserById(id);
    }

    @Override
    public void updUser(User user) {
        userMapper.updUser(user);
    }

    @Override
    public List<User> selUsersByPage(int start, int count) {
        return userMapper.selUsersByPage(start,count);
    }

    @Override
    public boolean isExist(String username) {
        int count = userMapper.isExist(username);
        return count>=1?true:false;
    }

    @Override
    public boolean checkUser(String username, String password) {
            int count = userMapper.checkPassword(username, password);
        return count>=1?true:false;
    }

    @Override
    public User selUserByUsername(String username) {
        return userMapper.selUserByUsername(username);
    }
}
