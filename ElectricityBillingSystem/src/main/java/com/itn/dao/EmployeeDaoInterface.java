/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.entity.Employee;
import java.util.List;

/**s
 *
 * @author Admin
 */
public interface EmployeeDaoInterface {
    
      public void insert(Employee e);
    public List<Employee> display();
    public void delete(int eid);
    public Employee display_by_id(int eid);
    public void update(Employee e);
//    public List<Employee> details();
//   
    
}
