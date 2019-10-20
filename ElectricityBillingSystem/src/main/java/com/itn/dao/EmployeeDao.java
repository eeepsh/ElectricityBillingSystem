/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.entity.Employee;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Admin
 */
public class EmployeeDao implements EmployeeDaoInterface{

    
       // @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getSession() {
        Session sess = getSessionFactory().getCurrentSession();
        if (sess == null) {
            sess = getSessionFactory().openSession();
        }
        return sess;
    
    }
    @Override
    public void insert(Employee e) {
       getSession().saveOrUpdate(e);
    }
    

    @Override
    public List<Employee> display() {
         List<Employee> employee=getSession().createCriteria(Employee.class).list();
        return employee;
    }
    
//    @Override
//    public List<Employee> details(){
//        Employee e  = (Employee) getSession().get(Employee.class, eid);
//        return e;
//    
//    } 

    @Override
    public void delete(int eid) {
        System.out.println("there");
         Employee e = new Employee();
        e.setEid(eid);
        getSession().delete(e);
    }

    @Override
    public Employee display_by_id(int eid) {
         Employee e  = (Employee) getSession().get(Employee.class, eid);
        return e;
    }

    @Override
    public void update(Employee e) {
        getSession().update(e);
    }

    
    
}
