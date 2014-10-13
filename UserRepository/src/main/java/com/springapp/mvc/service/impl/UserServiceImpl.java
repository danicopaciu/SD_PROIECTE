package com.springapp.mvc.service.impl;

import com.springapp.mvc.dao.UserDao;
import com.springapp.mvc.model.User;
import com.springapp.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

/**
 * Created by Daniel on 10/13/2014.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Transactional
    public void add(User user) {
        userDao.add(user);
    }

    @Transactional
    public void edit(User user) {
        userDao.edit(user);
    }

    @Transactional
    public void delete(int userId) {
        userDao.delete(userId);
    }

    @Transactional
    public User getUser(int userId) {
        return userDao.getUser(userId);
    }

    @Transactional
    public List getAllUsers() {
        List result = userDao.getAllUsers();
        return result;
    }
}
