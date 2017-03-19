package com.students.contoller;

import java.util.HashMap;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.student.validator.PhoneValidation;
import com.students.domain.Student;

@Controller
public class StudentController {
	
	
	
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String showForm(@ModelAttribute("student") Student student, Model model) {

		HashMap<String, String> genders = new HashMap<>();
		genders.put("male", "male");
		genders.put("female", "female");
		model.addAttribute("genders", genders);
		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String processForm(@Valid @ModelAttribute("student") Student student, BindingResult bindingResult, Model model) {

	//	phoneValidation.validate(student.getPhone(), bindingResult);
		
		if (bindingResult.hasErrors()) {
			HashMap<String, String> genders = new HashMap<>();
			genders.put("male", "male");
			genders.put("female", "female");
			model.addAttribute("genders", genders);
			return "registration";
		}

		return "success";

	}

}
