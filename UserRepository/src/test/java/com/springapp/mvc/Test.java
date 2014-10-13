package com.springapp.mvc;

import com.springapp.mvc.dao.impl.UserDaoImpl;
import com.springapp.mvc.model.User;

/**
 * Created by Daniel on 10/13/2014.
 */
public class Test {

    @org.junit.Test
    public void test(){
        User user = new UserDaoImpl().getUser(0);

    }
}
