/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.controller;

import com.itn.entity.Employee;
import com.itn.service.EmployeeServiceInterface;
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
public class EmployeeController {
    
    @Autowired
    private EmployeeServiceInterface  employeeService;
     
    @RequestMapping(value="/index", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView mv=new ModelAndView("index");
        return mv;
    }
      
     @RequestMapping(value="/AddEmployee", method=RequestMethod.GET)
    public ModelAndView addEmployee(){
        ModelAndView mv=new ModelAndView("AddEmployee");
        return mv;
    }
    
     @RequestMapping (value="/SaveEmployee", method=RequestMethod.POST)
    public ModelAndView saveEmployee(@ModelAttribute Employee e){
       employeeService.insert(e);
        return new ModelAndView("redirect:DisplayEmployee");
     
    }
      @RequestMapping(value="/DisplayEmployee", method=RequestMethod.GET)
       public ModelAndView displayEmployee(){
        List<Employee> employee=employeeService.display();
       System.out.println("In display employee");
        ModelAndView mv=new ModelAndView("DisplayEmployee");
        mv.addObject("employee",employee);
        return mv;
    }
       
       @RequestMapping(value="/DeleteEmployee", method =RequestMethod.GET )
    public ModelAndView delete(@RequestParam("eid") int eid){
           System.out.println("here"+eid);
           employeeService.delete(eid);
        return new ModelAndView("redirect:DisplayEmployee");
    }
       
         @RequestMapping(value="/EditEmployee",method=RequestMethod.GET)
         public ModelAndView edit(@RequestParam("eid") int eid){
         Employee employee=employeeService.display_by_id(eid);
         ModelAndView mv=new ModelAndView("EditEmployee");
         mv.addObject("employee",employee);
         return mv;
   }
    
    @RequestMapping(value="/UpdateEmployee",method =RequestMethod.POST )
    public ModelAndView update(@ModelAttribute Employee e ){
        // System.out.println("In update");
            employeeService.update(e);
        return new ModelAndView("redirect:DisplayCourse");
    }
    
//    @RequestMapping(value="/ShowTransaction", method =RequesteMethod.GET)
//    public ModelAndView details(@RequestParam("eid") int eid){
//        Employee employee=employeeService.details(eid);
//        ModelAndView mv=new ModelAndView("ShowTransaction");
//        mv.addObject("employee", employee);
//        return mv;
//        
//    }
}

