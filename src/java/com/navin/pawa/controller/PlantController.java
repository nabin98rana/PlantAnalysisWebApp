/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.navin.pawa.controller;

import com.navin.pawa.entity.Plant;
import com.navin.pawa.service.PlantService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Me
 */
@Controller
@RequestMapping(value = "/")
public class PlantController {

    @Autowired
    private PlantService plantService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("plants", plantService.getAll());
        return "index";
    }


    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editPlant(@PathVariable("id") int id, Model model) {
        model.addAttribute("plants", plantService.getById(id));
        return "plant/edit";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deletePlant(@PathVariable("id") int id) {
       plantService.delete(plantService.getById(id));
        return "plant/add";
    }

    @RequestMapping(value = "/addplant", method = RequestMethod.GET)
    public String deletePlant() {
        return "plant/add";
    }

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public String save(HttpServletRequest req) {
        Plant p = new Plant();
        p.setClientId(Integer.parseInt(req.getParameter("clientId")));
        p.setPlantName(req.getParameter("plantName"));
        p.setPlantScientificName(req.getParameter("plantScientificName"));
        p.setPlantDescription(req.getParameter("plantDescription"));
        p.setPlantHeight(Integer.parseInt(req.getParameter("plantHeight")));
        p.setPlantLocalization(req.getParameter("plantLocalization"));
        p.setStatus(Boolean.parseBoolean(req.getParameter("status")));

        plantService.update(p);
        return "plant/add";
    }

    @RequestMapping(value = "/services", method = RequestMethod.GET)
    public String services() {

        return "services/services";
    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contact() {

        return "contact/contact";
    }

    @RequestMapping(value = "/plants", method = RequestMethod.GET)
    public String viewPlants(Model model) {
        model.addAttribute("plants", plantService.getAll());
        return "plant/view";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about() {

        return "about/about";
    }

}
