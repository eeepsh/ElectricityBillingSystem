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
@Table(name = "transaction", catalog = "electricitybillingsystem", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Transaction.findAll", query = "SELECT t FROM Transaction t"),
    @NamedQuery(name = "Transaction.findByTid", query = "SELECT t FROM Transaction t WHERE t.tid = :tid"),
    @NamedQuery(name = "Transaction.findByPaidamount", query = "SELECT t FROM Transaction t WHERE t.paidamount = :paidamount"),
    @NamedQuery(name = "Transaction.findByDateoftransaction", query = "SELECT t FROM Transaction t WHERE t.dateoftransaction = :dateoftransaction")})
public class Transaction implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "tid")
    private Integer tid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "paidamount")
    private String paidamount;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "dateoftransaction")
    private String dateoftransaction;
    @JoinColumn(name = "bid", referencedColumnName = "bid")
    @ManyToOne(optional = false)
    private Bill bid;
    @JoinColumn(name = "eid", referencedColumnName = "eid")
    @ManyToOne(optional = false)
    private Employee eid;

    public Transaction() {
    }

    public Transaction(Integer tid) {
        this.tid = tid;
    }

    public Transaction(Integer tid, String paidamount, String dateoftransaction) {
        this.tid = tid;
        this.paidamount = paidamount;
        this.dateoftransaction = dateoftransaction;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getPaidamount() {
        return paidamount;
    }

    public void setPaidamount(String paidamount) {
        this.paidamount = paidamount;
    }

    public String getDateoftransaction() {
        return dateoftransaction;
    }

    public void setDateoftransaction(String dateoftransaction) {
        this.dateoftransaction = dateoftransaction;
    }

    public Bill getBid() {
        return bid;
    }

    public void setBid(Bill bid) {
        this.bid = bid;
    }

    public Employee getEid() {
        return eid;
    }

    public void setEid(Employee eid) {
        this.eid = eid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tid != null ? tid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Transaction)) {
            return false;
        }
        Transaction other = (Transaction) object;
        if ((this.tid == null && other.tid != null) || (this.tid != null && !this.tid.equals(other.tid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.itn.entity.Transaction[ tid=" + tid + " ]";
    }
    
}
