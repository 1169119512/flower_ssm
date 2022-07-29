package com.flower.dao;

import com.flower.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface UserDao {


    public User querryUserByUserName(String username);

    public User querryUserByUserNameAndPassword(String username, String password);

    public int saveUser(User user);

}
