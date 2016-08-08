/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.navin.pawa.dao;

import java.util.List;

/**
 *
 * @author Me
 */
public interface GenericDAO <T>{
    List<T> getAll();
    T getById(int id);
    void insert(T t);
    void delete(T t);
    void update(T t);
    List<T> search(String param);
}
