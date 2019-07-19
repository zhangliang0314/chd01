package com.chd.service;

import com.chd.model.User;

import java.util.List;

/**
 * @Auther:zhangliang
 * @Date:2019/7/16
 * @Description:com.chd.service
 * @version:1.0
 */
public interface UserService {
    /*
    用id查询用户
     */
    User selUserById(int id);
    /*
    增加用户
     */
    void insUser(User user);
    /*
    查询用户总数
     */
    int selCount();
    /*
    查询所有用户
    */
    List<User> selUsers();
    /*
    用id时候删除用户
     */
    void delUser(int id);
    /*
    更新用户
     */
    void updUser(User user);
    /*
    查询所有用户分页显示
     */
    List<User> selUsersByPage(int start, int count);
    /*
    判断用户是否存在
     */
    boolean isExist(String username);
    /*
    判断用户是否可以登录
     */
    boolean checkUser(String username,String password);
    /*
    通过用户名查找用户
     */
    User selUserByUsername(String username);
}
