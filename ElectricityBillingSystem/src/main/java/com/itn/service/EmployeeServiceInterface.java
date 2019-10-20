/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.entity.Employee;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface EmployeeServiceInterface {
    
    public void insert(Employee e);
    public List<Employee> display();
    public void delete(int eid);
    public Employee display_by_id(int eid);
    public void update(Employee e);
//    public List<Employee> details();
//    
}
