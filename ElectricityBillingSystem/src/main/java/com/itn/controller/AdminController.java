/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.controller;

import com.itn.entity.Admin;
import com.itn.service.AdminServiceInterface;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
public class AdminController {
    
    @Autowired
    private AdminServiceInterface adminService;
    
    
    
    @RequestMapping (value="/AddAdmin", method=RequestMethod.GET)
    public ModelAndView addAdmin(){
        ModelAndView mv= new ModelAndView("AddAdmin");
        return mv;
    }
    @RequestMapping (value="/SaveAdmin", method=RequestMethod.POST)
    public ModelAndView saveAdmin(@RequestParam("adminusername") String adminusername,
                                      @RequestParam("password") String password,
                                      @RequestParam("joinningdate") String joinningdate,
                                      @RequestParam("salary") String salary)
                                       throws Exception
    {
        Admin a=new Admin();
        a.setAdminusername(adminusername);
        a.setJoinningdate(joinningdate);
        a.setSalary(salary);
        String encrypt=AESCrypt.encrypt(password);
        a.setPassword(encrypt);
        adminService.insert(a);
        return new ModelAndView("redirect:DisplayAdmin");
        
   }
    
     
        
    @RequestMapping (value="/DisplayAdmin", method=RequestMethod.GET)
    public ModelAndView displayAdmin(){
        List<Admin> admin=adminService.display();
        ModelAndView mv=new ModelAndView("DisplayAdmin");
        mv.addObject("admin", admin);
        return mv;
    }
    
    @RequestMapping (value="/DeleteAdmin", method=RequestMethod.GET)
        public ModelAndView deleteAdmin(@RequestParam("aid") int aid){
                adminService.delete(aid);
                return new ModelAndView("redirect:DisplayAdmin");
    }
    
    @RequestMapping (value="/EditAdmin", method=RequestMethod.GET)
    public ModelAndView edit(@RequestParam("aid") int aid){
                     Admin admin=adminService.display_by_id(aid);
                     ModelAndView mv=new ModelAndView("EditAdmin");
                     mv.addObject("admindata", admin);
                     return mv;
        
    }
    
    @RequestMapping(value="UpdateAdmin", method=RequestMethod.POST)
    public ModelAndView update(@ModelAttribute Admin a){
             adminService.update(a);
             return new ModelAndView("redirect:DisplayAdmin");
    }
}
