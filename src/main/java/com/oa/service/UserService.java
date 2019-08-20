package com.oa.service;

import com.oa.entity.User;

public interface UserService {
    /**
     * 验证登录
     * @param user
     * @return
     */
    User login(User user);
}
