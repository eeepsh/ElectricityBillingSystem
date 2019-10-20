/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.dao.CustomerDataDaoInterface;
import com.itn.entity.Customerdata;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
public class CustomerDataService implements CustomerDataServiceInterface{

    
    private CustomerDataDaoInterface cddao;
    
    public void setCddao( CustomerDataDaoInterface cddao)
    {
        this.cddao=cddao;
    }
    
     @Transactional
    @Override
    public void insert(Customerdata cd) {
        cddao.insert(cd);
    }
    @Transactional
    @Override
    public List<Customerdata> display() {
        return cddao.display();
    }

    @Transactional
    @Override
    public void delete(int cdid) {
        cddao.delete(cdid);
    }
    

    @Transactional
    @Override
    public Customerdata display_by_id(int cdid) {
        return cddao.display_by_id(cdid);
    }

    @Transactional
    @Override
    public void update(Customerdata cd) {
        cddao.update(cd);
    }
    
    
}
