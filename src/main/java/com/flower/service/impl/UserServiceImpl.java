package com.flower.service.impl;

import com.flower.dao.UserDao;
import com.flower.pojo.User;
import com.flower.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Transactional(propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public void registerUser(User user) {
        userDao.saveUser(user);
    }

    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public User login(User user) {
        return userDao.querryUserByUserNameAndPassword(user.getUsername(),user.getPassword());
}

    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public boolean existsUsername(String username) {
        if(userDao.querryUserByUserName(username) != null){
            return true;
        }
        return false;
    }
}
