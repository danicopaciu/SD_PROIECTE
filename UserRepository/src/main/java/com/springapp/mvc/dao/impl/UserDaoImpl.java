package com.springapp.mvc.dao.impl;

import com.springapp.mvc.dao.UserDao;
import com.springapp.mvc.model.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Daniel on 10/13/2014.
 */
@Repository
public class UserDaoImpl implements UserDao{

    @Autowired
    private SessionFactory session;

    @Override
    public void add(User user) {
        session.getCurrentSession().save(user);
    }

    @Override
    public void edit(User user) {
        session.getCurrentSession().update(user);
    }

    @Override
    public void delete(int userId) {
        session.getCurrentSession().delete(getUser(userId));
    }

    @Override
    public User getUser(int userId) {
        return (User)session.getCurrentSession().get(User.class, userId);
    }

    @Override
    public List getAllUsers() {
        return session.getCurrentSession().createQuery("from User").list();
    }

}
