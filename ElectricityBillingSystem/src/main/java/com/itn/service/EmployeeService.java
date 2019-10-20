/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.dao.EmployeeDaoInterface;
import com.itn.entity.Employee;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
public class EmployeeService implements EmployeeServiceInterface{

    private EmployeeDaoInterface edao;

    public void setEdao(EmployeeDaoInterface edao) {
        this.edao = edao;
    }
    
    
    @Transactional
      @Override
    public void insert(Employee e) {
        edao.insert(e);
    }
   @Transactional
      @Override
    public List<Employee> display() {
        return edao.display();
    }
    
//    @Transactional
//    @Override
//    public List<Employee> details(){
//        return.edao.details();
//    }
    @Transactional
      @Override
    public void delete(int eid) {
        System.out.println("here");
        edao.delete(eid);
    }

    @Transactional
      @Override
    public Employee display_by_id(int eid) {
        return edao.display_by_id(eid);
    }

    @Transactional
      @Override
    public void update(Employee e) {
         edao.update(e);
    }
    
    
}
