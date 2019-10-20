/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.dao.BillDaoInterface;
import com.itn.entity.Bill;
import com.itn.entity.Customerdata;
import java.util.ArrayList;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
public class BillService implements BillServiceInterface{
    
    private BillDaoInterface bdao;
    
    public void setBdao(BillDaoInterface bdao){
        this.bdao=bdao;
    }
    
    

    @Transactional
    @Override
    public void insert(Bill b) {
        
         int PreviousReadings= b.getPreviousreadings();
        int CurrentReadings=b.getCurrentreadings();
        int Units=CurrentReadings-PreviousReadings;
        String amount=Integer.toString(Units*10);
        
        b.setPayableamount(amount);
        b.setUnits(Units);
        
       
        bdao.insert(b);
    }

    @Transactional
    @Override
    public Bill display_by_id(int bid) {
        
       return bdao.display_by_id(bid);
    }
    
    @Transactional
    @Override
    public ArrayList<Bill> display_by_cdid(int cdid) {
        
       ArrayList<Bill> b=bdao.display_by_cdid(cdid);
//       if(b.get(0)!=null){
//           
//       }else{
//           b.get(0).setCurrentreadings(0);
//           b.get(0).setPreviousreadings(0);
//           
//       }
       return b;
    }

    @Transactional
    @Override
    public List<Bill> diaplayBill(Customerdata cd) {
        
        return bdao.displayBill(cd);
    }
   
   
}
