/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "customerdata", catalog = "electricitybillingsystem", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Customerdata.findAll", query = "SELECT c FROM Customerdata c"),
    @NamedQuery(name = "Customerdata.findByCdid", query = "SELECT c FROM Customerdata c WHERE c.cdid = :cdid"),
    @NamedQuery(name = "Customerdata.findByCustomername", query = "SELECT c FROM Customerdata c WHERE c.customername = :customername"),
    @NamedQuery(name = "Customerdata.findByAddress", query = "SELECT c FROM Customerdata c WHERE c.address = :address"),
    @NamedQuery(name = "Customerdata.findByPhone", query = "SELECT c FROM Customerdata c WHERE c.phone = :phone"),
    @NamedQuery(name = "Customerdata.findByJoinningdate", query = "SELECT c FROM Customerdata c WHERE c.joinningdate = :joinningdate")})
public class Customerdata implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cdid")
    private Integer cdid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "customername")
    private String customername;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "address")
    private String address;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "phone")
    private String phone;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "joinningdate")
    private String joinningdate;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cdid")
    private List<Bill> billList;

    public Customerdata() {
    }

    public Customerdata(Integer cdid) {
        this.cdid = cdid;
    }

    public Customerdata(Integer cdid, String customername, String address, String phone, String joinningdate) {
        this.cdid = cdid;
        this.customername = customername;
        this.address = address;
        this.phone = phone;
        this.joinningdate = joinningdate;
    }

    public Integer getCdid() {
        return cdid;
    }

    public void setCdid(Integer cdid) {
        this.cdid = cdid;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getJoinningdate() {
        return joinningdate;
    }

    public void setJoinningdate(String joinningdate) {
        this.joinningdate = joinningdate;
    }

    @XmlTransient
    public List<Bill> getBillList() {
        return billList;
    }

    public void setBillList(List<Bill> billList) {
        this.billList = billList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdid != null ? cdid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Customerdata)) {
            return false;
        }
        Customerdata other = (Customerdata) object;
        if ((this.cdid == null && other.cdid != null) || (this.cdid != null && !this.cdid.equals(other.cdid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.itn.entity.Customerdata[ cdid=" + cdid + " ]";
    }
    
}
