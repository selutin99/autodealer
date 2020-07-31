package com.galua.autodealer.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s %s %s %s %s %s|autoDealer,carBrand,equipment,name,year,price")
@Table(name = "AUTODEALER_CAR")
@Entity(name = "autodealer$Car")
public class Car extends StandardEntity {
    private static final long serialVersionUID = -3987221192660983133L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "AUTO_DEALER_ID")
    protected AutoDealer autoDealer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CAR_BRAND_ID")
    protected CarBrand carBrand;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "EQUIPMENT_ID")
    protected Equipment equipment;

    @Column(name = "NAME")
    protected String name;

    @Temporal(TemporalType.DATE)
    @Column(name = "YEAR_")
    protected Date year;

    @Column(name = "PRICE")
    protected BigDecimal price;

    public void setAutoDealer(AutoDealer autoDealer) {
        this.autoDealer = autoDealer;
    }

    public AutoDealer getAutoDealer() {
        return autoDealer;
    }

    public void setCarBrand(CarBrand carBrand) {
        this.carBrand = carBrand;
    }

    public CarBrand getCarBrand() {
        return carBrand;
    }

    public void setEquipment(Equipment equipment) {
        this.equipment = equipment;
    }

    public Equipment getEquipment() {
        return equipment;
    }

    public String getName() {
        return name;
    }

    public void setYear(Date year) {
        this.year = year;
    }

    public Date getYear() {
        return year;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getPrice() {
        return price;
    }


}