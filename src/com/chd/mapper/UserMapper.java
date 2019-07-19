package com.chd.mapper;

import com.chd.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    User selUserById(int id);
    List<User> selUsers();
    List<User> selUsersByPage(int start,int count);
    void insUser(User user);

    void updUser(User user);

    void delUserById(int id);

    int selCount();

    int isExist(String username);

    //判段密码是否正确
    int checkPassword(@Param("username") String username,@Param("password") String password);

    User selUserByUsername(String username);
}