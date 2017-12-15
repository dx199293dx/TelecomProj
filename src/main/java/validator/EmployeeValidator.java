package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import beans.Employee;



public class EmployeeValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Employee.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "name.required");
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userID", "userid.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "password.required");
	}

}
