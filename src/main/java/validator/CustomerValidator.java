package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import beans.Customer;

public class CustomerValidator implements Validator {

	@Override
	public boolean supports(Class<?> cls) {
		// TODO Auto-generated method stub
		return Customer.class.equals(cls);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "firstName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "lastName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userID", "userid.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "password.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "phone.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "ssn", "ssn.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dob", "dob.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "street", "street.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "city.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "state", "state.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "zip", "zip.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "servicenumber", "servicenumber.required");
		

	}

}
