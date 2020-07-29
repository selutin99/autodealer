package com.galua.autodealer.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import javax.persistence.OneToOne;

@NamePattern("%s %s %s|name,autoDealer,equipment")
@Table(name = "AUTODEALER_CAR_BRAND")
@Entity(name = "autodealer$CarBrand")
public class CarBrand extends StandardEntity {
    private static final long serialVersionUID = -8854577371386280044L;

    @Column(name = "NAME")
    protected String name;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "EQUIPMENT_ID")
    protected Equipment equipment;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "AUTO_DEALER_ID")
    protected AutoDealer autoDealer;

    public void setEquipment(Equipment equipment) {
        this.equipment = equipment;
    }

    public Equipment getEquipment() {
        return equipment;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setAutoDealer(AutoDealer autoDealer) {
        this.autoDealer = autoDealer;
    }

    public AutoDealer getAutoDealer() {
        return autoDealer;
    }


}