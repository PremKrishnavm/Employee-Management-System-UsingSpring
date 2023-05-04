package mvc_demo2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mvc_demo2.dao.EmployeeDao;
import mvc_demo2.dto.Employee;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeDao dao;
	
	@RequestMapping("/saveEmployee")
	public ModelAndView saveEmployee() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("employee",new Employee());
		mav.setViewName("saveEmployee.jsp");
		return mav;
	}
	
	@RequestMapping("/addEmployee")
	public ModelAndView addEmployee(@ModelAttribute Employee employee) {
		dao.saveEmployee(employee);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index.jsp");
		return mav;
	}
	
	@RequestMapping("/viewEmployees")
	public ModelAndView viewEmployees() {
	List<Employee> employees = dao.getAllEmployees();
	ModelAndView mav = new ModelAndView("viewEmployees.jsp"); // we can create this type also
	mav.addObject("employees",employees);
	return mav;
	}
	
	@RequestMapping("/updateEmployee")
	public ModelAndView updateEmployee(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("updateEmployee.jsp");
		Employee employee = dao.getEmployee(id);	
		mav.addObject("employee",employee);
		return mav;
	}
	@RequestMapping("/saveUpdatedEmployee")
	public ModelAndView saveUpdateEmployee(@ModelAttribute Employee employee) {
	ModelAndView mav = new ModelAndView("viewEmployees.jsp");
	dao.updateEmployee(employee);
	mav.addObject("employees",dao.getAllEmployees());
	return mav;
	}
	@RequestMapping("/deleteEmployee")
	public ModelAndView deleteEmployee(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("viewEmployees.jsp");
		dao.deleteEmployee(id);
		mav.addObject("employees",dao.getAllEmployees());
		return mav;
	}

}
