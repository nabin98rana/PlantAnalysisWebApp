/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.navin.pawa.dao.impl;

import com.navin.pawa.dao.UserDAO;
import com.navin.pawa.entity.User;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Me
 */
@Repository(value = "UserDAO")
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction trans;

    @Override
    @Transactional
    public List<User> getAll() {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        return session.getNamedQuery("User.findAll").list();
    }

    @Override
    @Transactional
    public User getById(int id) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        User user = (User) session.get(User.class, id);
        trans.commit();
        session.close();
        return user;
    }

    @Override
    @Transactional
    public void insert(User t) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        session.save(t);
        trans.commit();
        session.close();
    }

    @Override
    @Transactional
    public void delete(User t) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        session.delete(t);
        trans.commit();
        session.close();
    }

    @Override
    @Transactional
    public void update(User t) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        session.update(t);
        trans.commit();
        session.close();
    }

    @Override
    @Transactional
    public List<User> search(String param) {
        return null;
    }
}
