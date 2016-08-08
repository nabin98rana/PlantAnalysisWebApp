/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.navin.pawa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Me
 */
@Controller
@RequestMapping(value = "/admin")
public class UserController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String admin(){
    return "admin/index";
    }
    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String register(){
    return "admin/register";
    }
}
