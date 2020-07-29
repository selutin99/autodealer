package com.galua.autodealer.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@NamePattern("%s %s|name,code")
@Table(name = "AUTODEALER_COUNTRY")
@Entity(name = "autodealer$Country")
public class Country extends StandardEntity {
    private static final long serialVersionUID = -4309396564535881575L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "CODE", length = 3)
    protected String code;


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }


}