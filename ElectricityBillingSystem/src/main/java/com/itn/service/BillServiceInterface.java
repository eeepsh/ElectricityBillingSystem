/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.entity.Bill;
import com.itn.entity.Customerdata;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface BillServiceInterface {
    public void insert(Bill b);
     public Bill display_by_id(int bid);
      public ArrayList<Bill> display_by_cdid(int cdid);
      public List<Bill> diaplayBill(Customerdata cd);
    
    
    
}
