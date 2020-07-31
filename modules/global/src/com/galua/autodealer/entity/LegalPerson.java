package com.galua.autodealer.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.Lob;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s %s %s %s|name,address,tin,phone")
@Table(name = "AUTODEALER_LEGAL_PERSON")
@Entity(name = "autodealer$LegalPerson")
public class LegalPerson extends StandardEntity {
    private static final long serialVersionUID = -7306396519802491886L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "TIN")
    protected String tin;

    @Lob
    @Column(name = "ADDRESS")
    protected String address;

    @Column(name = "PHONE")
    protected String phone;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setTin(String tin) {
        this.tin = tin;
    }

    public String getTin() {
        return tin;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }


}