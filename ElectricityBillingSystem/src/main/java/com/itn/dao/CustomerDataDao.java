/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.entity.Customerdata;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Admin
 */
public class CustomerDataDao implements CustomerDataDaoInterface{

    
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    private Session getSession(){
       Session sess=getSessionFactory().getCurrentSession();
       if(sess==null)
       {
           sess=getSessionFactory().openSession();
       }
       return sess;
    }
    
    @Override
    public void insert(Customerdata cd) {
        getSession().saveOrUpdate(cd);
    }

    @Override
    public List<Customerdata> display() {
        List<Customerdata> customerdata=getSession().createCriteria(Customerdata.class).list();
        return customerdata;
        
    }

    @Override
    public void delete(int cdid) {
        Customerdata cd=new Customerdata();
        cd.setCdid(cdid);
        getSession().delete(cd);
    }

    @Override
    public Customerdata display_by_id(int cdid) {
        Customerdata cd=(Customerdata) getSession().get(Customerdata.class, cdid);
        return cd;
    }

    @Override
    public void update(Customerdata cd) {
        getSession().update(cd);
    }
    
}
