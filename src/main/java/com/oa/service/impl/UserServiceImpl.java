package com.oa.service.impl;

import com.oa.dao.UserDao;
import com.oa.entity.User;
import com.oa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    public UserDao userDao;

    @Override
    public User login(User user) {
        return userDao.login(user);
    }
}
