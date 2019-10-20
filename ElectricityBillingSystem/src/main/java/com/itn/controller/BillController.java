/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.controller;

import com.itn.entity.Bill;
import com.itn.entity.Customerdata;
import com.itn.service.BillServiceInterface;
import com.itn.service.CustomerDataService;
import com.itn.service.CustomerDataServiceInterface;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class BillController {

    @Autowired
    private CustomerDataServiceInterface customerDataService;

    @Autowired
    private BillServiceInterface billService;

    @RequestMapping(value = "/AddBill", method = RequestMethod.GET)
    public ModelAndView addbill(@RequestParam("cdid") int cdid) {
        Customerdata cd = new Customerdata();
        cd.setCdid(cdid);
        ArrayList<Bill> b = billService.display_by_cdid(cdid);
       
        ModelAndView mv = new ModelAndView("AddBill");
        mv.addObject("billdata", cd);
        mv.addObject("bill",b);
        return mv;

    }

    @RequestMapping(value="/SaveBill", method=RequestMethod.POST)
    public ModelAndView saveBill(
                                    @RequestParam("cdid") int cdid,
                                    @RequestParam("previousreadings") int previousreadings,
                                    @RequestParam("currentreadings") int currentreadings,
                                    @RequestParam("date")String date
                                   ){
        Bill b=new Bill();
        
        
        Customerdata cd=new Customerdata();
        cd.setCdid(cdid);
        b.setCdid(cd);
        
        b.setPreviousreadings(previousreadings);
        b.setCurrentreadings(currentreadings);
        b.setDate(date);
       
        billService.insert(b);
        return new ModelAndView("redirect:DisplayBill?cdid="+cdid);
    }
    
    @RequestMapping(value="/DisplayBill", method=RequestMethod.GET)
    public ModelAndView displayBill(@RequestParam("cdid") int cdid){
        Bill  b = new Bill();
        Customerdata cd= new Customerdata();
        cd.setCdid(cdid);
        
        
     List<Bill> bill=billService.diaplayBill(cd);
     ModelAndView mv=new ModelAndView("DisplayBill");
     mv.addObject("bill", bill);
     return mv;
    }
}
