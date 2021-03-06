/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bor.javawebexample.db;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

/**
 *
 * @author leon
 */
@DatabaseTable(tableName = "Jobs")
public class JobRecord {      

    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String lastname;
    @DatabaseField
    private String firstname;
    @DatabaseField
    private String job;
    @DatabaseField
    private String address;
    
    public JobRecord() {}
    
    public JobRecord(String fname, String lname, String job, String address) {
        this.firstname = fname;
        this.lastname = lname;
        this.job = job;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
