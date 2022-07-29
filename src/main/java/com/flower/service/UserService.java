package com.flower.service;

import com.flower.pojo.User;

public interface UserService {

    public void registerUser(User user);

    public User login(User user);

    public boolean existsUsername(String username);
}
