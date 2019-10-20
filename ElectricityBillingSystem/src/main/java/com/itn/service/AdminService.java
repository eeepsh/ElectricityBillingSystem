/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.dao.AdminDaoInterface;
import com.itn.entity.Admin;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
public class AdminService implements AdminServiceInterface{

    private AdminDaoInterface adao;

    public void setAdao(AdminDaoInterface adao) {
        this.adao = adao;
    }
    
    @Transactional
    @Override
    public void insert(Admin a) {
        adao.insert(a);
    }

    @Transactional
    @Override
    public List<Admin> display() {
        return adao.display();
    }

     @Transactional
    @Override
    public void delete(int aid) {
        adao.delete(aid);
    }
    

    @Transactional
    @Override
    public Admin display_by_id(int aid) {
        return adao.display_by_id(aid);
    }
    @Transactional
    @Override
    public void update(Admin a) {
        adao.update(a);
    }
    
}
