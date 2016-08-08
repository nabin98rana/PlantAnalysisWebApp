/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.navin.pawa.service.impl;

import com.navin.pawa.dao.UserDAO;
import com.navin.pawa.entity.User;
import com.navin.pawa.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Navin
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;
    @Override
    public List<User> getAll() {
        return userDAO.getAll();
    }

    @Override
    public User getById(int id) {
        return userDAO.getById(id);
    }

    @Override
    public void insert(User t) {
        userDAO.insert(t);
    }

    @Override
    public void update(User t) {
        userDAO.update(t);
    }

    @Override
    public void delete(User t) {
        userDAO.delete(t);
    }

    @Override
    public List<User> search(String param) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
