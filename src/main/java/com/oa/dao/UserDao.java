package com.oa.dao;

import com.oa.entity.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    /**
     * 验证登录
     * @param user
     * @return
     */
    @Select("select * from user where username=#{username} and password=#{password}")
     User login(User user);
}
