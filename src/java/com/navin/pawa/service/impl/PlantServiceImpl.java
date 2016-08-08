/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.navin.pawa.service.impl;

import com.navin.pawa.dao.PlantDAO;
import com.navin.pawa.entity.Plant;
import com.navin.pawa.service.PlantService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Me
 */
@Service
@Transactional
public class PlantServiceImpl implements PlantService {

    @Autowired
    private PlantDAO plantDAO;

    @Override
    public List<Plant> getAll() {
        return plantDAO.getAll();
    }

    @Override
    public Plant getById(int id) {
        return plantDAO.getById(id);
    }

    @Override
    public void insert(Plant t) {
        plantDAO.insert(t);
    }

    @Override
    public void update(Plant t) {
        plantDAO.update(t);
    }

    @Override
    public void delete(Plant t) {
        plantDAO.delete(t);
    }

    @Override
    public List<Plant> search(String param) {
        return plantDAO.search(param);
    }

}
