/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.entity.Admin;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface AdminServiceInterface {
    public void insert(Admin a);
    public List<Admin> display();
    public void delete(int aid );
    public Admin display_by_id(int aid);
    public void update(Admin a);
    
}
