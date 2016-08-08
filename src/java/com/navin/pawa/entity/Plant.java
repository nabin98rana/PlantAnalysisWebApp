 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.navin.pawa.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Me
 */
@Entity
@Table(name = "tbl_plant", catalog = "plant_analysis", schema = "")
@NamedQueries({
    @NamedQuery(name = "Plant.findAll", query = "SELECT p FROM Plant p"),
    @NamedQuery(name = "Plant.findByPlantId", query = "SELECT p FROM Plant p WHERE p.plantId = :plantId"),
    @NamedQuery(name = "Plant.findByClientId", query = "SELECT p FROM Plant p WHERE p.clientId = :clientId"),
    @NamedQuery(name = "Plant.findByPlantName", query = "SELECT p FROM Plant p WHERE p.plantName = :plantName"),
    @NamedQuery(name = "Plant.findByPlantScientificName", query = "SELECT p FROM Plant p WHERE p.plantScientificName = :plantScientificName"),
    @NamedQuery(name = "Plant.findByAddedDate", query = "SELECT p FROM Plant p WHERE p.addedDate = :addedDate"),
    @NamedQuery(name = "Plant.findByModifiedDate", query = "SELECT p FROM Plant p WHERE p.modifiedDate = :modifiedDate"),
    @NamedQuery(name = "Plant.findByStatus", query = "SELECT p FROM Plant p WHERE p.status = :status"),
    @NamedQuery(name = "Plant.findByPlantHeight", query = "SELECT p FROM Plant p WHERE p.plantHeight = :plantHeight"),
    @NamedQuery(name = "Plant.findByPlantLocalization", query = "SELECT p FROM Plant p WHERE p.plantLocalization = :plantLocalization")})
public class Plant implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "plant_id")
    private int plantId;

    @Column(name = "user_id")
    private int clientId;

    @Column(name = "plant_local_name")
    private String plantName;

    @Column(name = "plant_scientific_name")
    private String plantScientificName;

    @Column(name = "plant_description")
    private String plantDescription;

    @Column(name = "plant_height")
    private int plantHeight;

    @Column(name = "plant_localization")
    private String plantLocalization;

    @Column(name = "added_date", insertable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date addedDate;
    @Column(name = "modified_date", nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date modifiedDate;

    @Column(name = "status")
    private boolean status;

    public Plant() {
    }

    public Plant(int plantId) {
        this.plantId = plantId;
    }

    public Plant(int plantId, int clientId, String plantName, String plantDescription, String plantScientificName, Date addedDate, boolean status, int plantHeight, String plantLocalization) {
        this.plantId = plantId;
        this.clientId = clientId;
        this.plantName = plantName;
        this.plantDescription = plantDescription;
        this.plantScientificName = plantScientificName;

        this.addedDate = addedDate;
        this.status = status;
        this.plantHeight = plantHeight;
        this.plantLocalization = plantLocalization;
    }

    public int getPlantId() {
        return plantId;
    }

    public void setPlantId(int plantId) {
        this.plantId = plantId;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public String getPlantName() {
        return plantName;
    }

    public void setPlantName(String plantName) {
        this.plantName = plantName;
    }

    public String getPlantDescription() {
        return plantDescription;
    }

    public void setPlantDescription(String plantDescription) {
        this.plantDescription = plantDescription;
    }

    public String getPlantScientificName() {
        return plantScientificName;
    }

    public void setPlantScientificName(String plantScientificName) {
        this.plantScientificName = plantScientificName;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getPlantHeight() {
        return plantHeight;
    }

    public void setPlantHeight(int plantHeight) {
        this.plantHeight = plantHeight;
    }

    public String getPlantLocalization() {
        return plantLocalization;
    }

    public void setPlantLocalization(String plantLocalization) {
        this.plantLocalization = plantLocalization;
    }

}
