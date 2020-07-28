package com.galua.autodealer.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.List;
import javax.persistence.OneToMany;

@NamePattern("%s %s|name,code")
@Table(name = "AUTODEALER_COUNTRY")
@Entity(name = "autodealer$Country")
public class Country extends StandardEntity {
    private static final long serialVersionUID = 1742387434406631978L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "CODE")
    protected Integer code;

    @OneToMany(mappedBy = "country")
    protected List<Automaker> automaker;

    public List<Automaker> getAutomaker() {
        return automaker;
    }

    public void setAutomaker(List<Automaker> automaker) {
        this.automaker = automaker;
    }



    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Integer getCode() {
        return code;
    }


}