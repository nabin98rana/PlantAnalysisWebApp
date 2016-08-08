/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.navin.pawa.dao.impl;

import com.navin.pawa.dao.PlantDAO;
import com.navin.pawa.entity.Plant;
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
@Repository(value = "PlantDAO")
public class PlantDAOImpl implements PlantDAO {

    @Autowired(required = true)
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction trans;

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<Plant> getAll() {
        session=sessionFactory.openSession();
        trans=session.beginTransaction();
       return session.getNamedQuery("Plant.findAll").list();
    }

    @Override
    @Transactional
    public Plant getById(int id) {
     session=sessionFactory.openSession();
     trans=session.beginTransaction();
     Plant p=(Plant) session.get(Plant.class, id);
     trans.commit();
     session.close();
     return p;
    }

    @Override
    @Transactional
    public void insert(Plant t) {
        session=sessionFactory.openSession();
        trans=session.beginTransaction();
        session.save(t);
        trans.commit();
        session.close();
    }

    @Override
    @Transactional
    public void delete(Plant t) {

       session=sessionFactory.openSession();
       trans=session.beginTransaction();
       session.delete(t);
       trans.commit();
       session.close();
    }

    @Override
    @Transactional
    public void update(Plant t) {
        session=sessionFactory.openSession();
        trans=session.beginTransaction();
        session.saveOrUpdate(t);
        trans.commit();
        session.close();
    }

    @Override
    @Transactional
    public List<Plant> search(String param) {
        return null;
    }
}
