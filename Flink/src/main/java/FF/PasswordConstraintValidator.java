package FF;

import javax.validation.ConstraintValidator;

import javax.validation.ConstraintValidatorContext;

public class PasswordConstraintValidator implements ConstraintValidator<Password,String> {

	public boolean isValid(String s, ConstraintValidatorContext cvc) {
		
		boolean result=s.contains("jtp");
		return result;
	}

	@Override
	public void initialize(Password constraintAnnotation)
	{
		
		
	}
	/*
	 * @Override public boolean isValid(LocalDate date, ConstraintValidatorContext
	 * context) { if (date == null) { return true; // Consider null as valid.
	 * Use @NotNull for null checks. } return date.isAfter(LocalDate.now()); }
	 */
}
