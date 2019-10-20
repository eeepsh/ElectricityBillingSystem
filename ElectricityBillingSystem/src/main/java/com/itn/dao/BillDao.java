/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.entity.Bill;
import com.itn.entity.Customerdata;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Admin
 */
public class BillDao implements BillDaoInterface{

    
    private SessionFactory sessionFactory;
    
    public SessionFactory getSessionFactory(){
        
        return sessionFactory;
    }
    
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory=sessionFactory;
        
    }
    
    private Session getSession(){
        Session sess=getSessionFactory().getCurrentSession();
        if(sess==null){
            sess=getSessionFactory().openSession();
            
        }
        return sess;
    }
    
    @Override
    public void insert(Bill b) {
        
//        boolean status=false;

//        b.setStatus(status);
//        if(status==false){
//           int PreviousReadings=0;
//           b.setPreviousreadings(PreviousReadings);
//    getSession().saveOrUpdate(b);
//        }
//        else{
  
        
        
         getSession().saveOrUpdate(b);
         
        
        
    }
    

    @Override
    public Bill display_by_id(int bid) {
        Bill b=(Bill) getSession().get(Bill.class,bid);
        return b;
    }

    @Override
    public ArrayList<Bill> display_by_cdid(int cdid) {
        Customerdata c=null;
        c=new Customerdata();
        c.setCdid(cdid);
        
        ArrayList<Bill> b =  (ArrayList<Bill>)getSession().createCriteria(Bill.class).addOrder(Order.desc("bid")).add(Restrictions.eq("cdid",c)).list();
    return b;
    }

    @Override
    public List<Bill> displayBill(Customerdata cd) {
        List<Bill> bill=getSession().createCriteria(Bill.class).add(Restrictions.eq("cdid",cd)).list();
        return bill;
    }

    
}
