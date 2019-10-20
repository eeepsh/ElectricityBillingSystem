/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.entity.Customerdata;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CustomerDataDaoInterface {
    
    public void insert(Customerdata cd);
    public List<Customerdata> display();
    public void delete(int cdid);
    public Customerdata display_by_id(int cdid);
    public void update(Customerdata cd);
    
}
