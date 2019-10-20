/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.controller;

import com.itn.entity.Customerdata;
import com.itn.service.CustomerDataServiceInterface;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class CustomerDataController {
  
    @Autowired
    private CustomerDataServiceInterface customerDataService;
    
    @RequestMapping(value="/AddCustomerData", method=RequestMethod.GET)
    public ModelAndView addCustomerData(){
        ModelAndView mv= new ModelAndView("AddCustomerData");
        return mv;
     }
    @RequestMapping(value="/SaveCustomerData", method=RequestMethod.POST)
    public ModelAndView saveCustomerData(@ModelAttribute Customerdata cd  ){
        customerDataService.insert(cd);
        return new ModelAndView("redirect:DisplayCustomerData");
        
    }
    @RequestMapping (value="/DisplayCustomerData", method=RequestMethod.GET)
    public ModelAndView displayCustomerData(){
        List<Customerdata> customerdata=customerDataService.display();
        ModelAndView mv=new ModelAndView("DisplayCustomerData");
        mv.addObject("customerdata", customerdata);
        return mv;
        
    }
    @RequestMapping (value="/DeleteCustomerData", method=RequestMethod.GET)
    public ModelAndView delete(@RequestParam ("cdid") int cdid){
        customerDataService.delete(cdid);
        return new ModelAndView("redirect:DisplayCustomerData");
        
    }
    
    @RequestMapping( value="/EditCustomerData", method=RequestMethod.GET)
    public ModelAndView edit(@RequestParam("cdid") int cdid){
        Customerdata customerdata=customerDataService.display_by_id(cdid);
        System.out.println("in edit");
         ModelAndView mv=new ModelAndView("EditCustomerData");
         mv.addObject("customerdata", customerdata);
        return mv;
   }
    @RequestMapping(value="/UpdateCustomerData", method=RequestMethod.POST)
    public ModelAndView update(@ModelAttribute Customerdata cd){
        customerDataService.update(cd);
        return new ModelAndView("redirect:DisplayCustomerData");
    }
    
   
}
