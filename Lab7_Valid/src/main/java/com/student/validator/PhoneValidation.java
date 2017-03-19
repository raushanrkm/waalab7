/**
 * 
 */
/**
 * @author Dell-PC
 *
 */
package com.student.validator;


import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

//import javax.validation.Validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.students.domain.Phone;

public class PhoneValidation implements Validator{

	@Override
	public boolean supports(Class<?> paramclass) {
		// TODO Auto-generated method stub
		return Phone.class.equals(paramclass);
	}

	@Override
	public void validate(Object phoneobj1, Errors errors) {
		
		Phone phone=(Phone)phoneobj1;
		if(phone.getArea()> 999 | phone.getArea()<1)
		{
			errors.rejectValue("area","area.value");
		}
		
	}
	
	
}