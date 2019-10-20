/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "bill", catalog = "electricitybillingsystem", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Bill.findAll", query = "SELECT b FROM Bill b"),
    @NamedQuery(name = "Bill.findByBid", query = "SELECT b FROM Bill b WHERE b.bid = :bid"),
    @NamedQuery(name = "Bill.findByStatus", query = "SELECT b FROM Bill b WHERE b.status = :status"),
    @NamedQuery(name = "Bill.findByPreviousreadings", query = "SELECT b FROM Bill b WHERE b.previousreadings = :previousreadings"),
    @NamedQuery(name = "Bill.findByCurrentreadings", query = "SELECT b FROM Bill b WHERE b.currentreadings = :currentreadings"),
    @NamedQuery(name = "Bill.findByUnits", query = "SELECT b FROM Bill b WHERE b.units = :units"),
    @NamedQuery(name = "Bill.findByDate", query = "SELECT b FROM Bill b WHERE b.date = :date"),
    @NamedQuery(name = "Bill.findByPayableamount", query = "SELECT b FROM Bill b WHERE b.payableamount = :payableamount")})
public class Bill implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "bid")
    private Integer bid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private boolean status;
    @Basic(optional = false)
    @NotNull
    @Column(name = "previousreadings")
    private int previousreadings;
    @Basic(optional = false)
    @NotNull
    @Column(name = "currentreadings")
    private int currentreadings;
    @Basic(optional = false)
    @NotNull
    @Column(name = "units")
    private int units;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "date")
    private String date;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "payableamount")
    private String payableamount;
    @JoinColumn(name = "cdid", referencedColumnName = "cdid")
    @ManyToOne(optional = false)
    private Customerdata cdid;

    public Bill() {
    }

    public Bill(Integer bid) {
        this.bid = bid;
    }

    public Bill(Integer bid, boolean status, int previousreadings, int currentreadings, int units, String date, String payableamount) {
        this.bid = bid;
        this.status = status;
        this.previousreadings = previousreadings;
        this.currentreadings = currentreadings;
        this.units = units;
        this.date = date;
        this.payableamount = payableamount;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getPreviousreadings() {
        return previousreadings;
    }

    public void setPreviousreadings(int previousreadings) {
        this.previousreadings = previousreadings;
    }

    public int getCurrentreadings() {
        return currentreadings;
    }

    public void setCurrentreadings(int currentreadings) {
        this.currentreadings = currentreadings;
    }

    public int getUnits() {
        return units;
    }

    public void setUnits(int units) {
        this.units = units;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPayableamount() {
        return payableamount;
    }

    public void setPayableamount(String payableamount) {
        this.payableamount = payableamount;
    }

    public Customerdata getCdid() {
        return cdid;
    }

    public void setCdid(Customerdata cdid) {
        this.cdid = cdid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bid != null ? bid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bill)) {
            return false;
        }
        Bill other = (Bill) object;
        if ((this.bid == null && other.bid != null) || (this.bid != null && !this.bid.equals(other.bid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.itn.entity.Bill[ bid=" + bid + " ]";
    }
    
}
