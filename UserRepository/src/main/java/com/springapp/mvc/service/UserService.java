package com.springapp.mvc.service;

import com.springapp.mvc.model.User;

import java.util.List;

/**
 * Created by Daniel on 10/13/2014.
 */
public interface UserService {

    public void add(User user);
    public void edit(User user);
    public void delete(int userId);
    public User getUser(int userId);
    public List getAllUsers();
}
