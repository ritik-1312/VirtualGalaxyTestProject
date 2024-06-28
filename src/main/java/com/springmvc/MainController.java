package com.springmvc;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.cj.Session;

@Controller
public class MainController {
	
	@Autowired
	MainDao dao;
	
	@RequestMapping("/hello")
	public String getHello() {
		return "hello";
	}
	
	@RequestMapping("login")
	public String getLoginPage() {
		return "login";
	}
	
	@RequestMapping("regform")
	public String getRegPage() {
		return "regestraion";
	}
	
	@RequestMapping("generateId")
	public String GenerateId(Model model) {
		int generate = dao.GenerateId();
		model.addAttribute("id", generate);
		return "regestraion";
	}
	
	@RequestMapping(value = "save_data", method = RequestMethod.POST)
	public String SaveData(@ModelAttribute ("rm") RegModel rm, HttpSession session) {
		int gender = rm.getGender();
		int reg = dao.SaveData(rm); 
		System.out.println("Gneder: "+gender);
		session.setAttribute("sesreg", "success");
		return "login";
	}
	
	@RequestMapping(value = "do_login", method = RequestMethod.POST)
	public String DoLogin(@ModelAttribute("lm") LoginModule lm, HttpSession session) {
		List<RegModel> list = dao.dologin(lm);
		if(list!=null) {
			session.setAttribute("seslog", "success");
			return"redirect:/view";
		}
		else {
			session.setAttribute("sesfail", "logfail");
			return "login";
		}
		
	}
	
	@RequestMapping(value = "emp_reg", method = RequestMethod.POST)
	public String saveEmp(@ModelAttribute("em") EmpModel em, HttpSession session) {
		int emp_data = dao.SaveEmpData(em);
		return "redirect:/view";
	}
	
	@RequestMapping("view")
	public String getEmpData(Model model) {
		List<EmpModel> list = dao.getEmpData();
		model.addAttribute("list", list);
		return "Dashboard";
	}
	
	@RequestMapping("deleteemp/{id}")
	public String getDeleteEmp(@PathVariable int id) {
		int delete = dao.deleteEmp(id);
		return "redirect:/view";
	}
	
	@RequestMapping("editemp/{id}")
	public String getEditData(@PathVariable int id, Model model) {
		List<EmpModel> emp = dao.getEditEmp(id);
		for (EmpModel empModel : emp) {
			System.out.println("From Edit");
			System.out.println("Id: "+empModel.getId());
		}
		model.addAttribute("emp", emp);
		return "editform";
	}
	
	@RequestMapping("update")
	public String getUpdate(@ModelAttribute ("em") EmpModel em, Model model) {
		int update = dao.UpdateData(em);
		return "redirect:/view";
		
	}
}
