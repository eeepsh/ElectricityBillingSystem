/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.entity.Admin;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Admin
 */
public class AdminDao implements AdminDaoInterface{

    //@Autowired
    
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    private Session getSession(){
        Session sess= getSessionFactory().getCurrentSession();
        if(sess==null)
        {
            sess=getSessionFactory().openSession();
        }
        return sess;
    }
    @Override
    public void insert(Admin a) {
        getSession().saveOrUpdate(a);
    }

    @Override
    public List<Admin> display() {
        List<Admin> admin=getSession().createCriteria(Admin.class).list();
        return admin;
    }

    @Override
    public void delete(int aid) {
        Admin a=new Admin();
        a.setAid(aid);
        getSession().delete(a);
    }

    @Override
    public Admin display_by_id(int aid) {
        Admin a=(Admin) getSession().get(Admin.class, aid);
        return a;
    }

    @Override
    public void update(Admin a) {
        getSession().update(a);
    }

   
    
}
