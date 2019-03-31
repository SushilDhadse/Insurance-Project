package com.lti.component;

public class NoSuchInsuranceException extends RuntimeException{

	public NoSuchInsuranceException() {
		super();
		
	}

	public NoSuchInsuranceException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		
	}

	public NoSuchInsuranceException(String message, Throwable cause) {
		super(message, cause);
		
	}

	public NoSuchInsuranceException(String message) {
		super(message);
		
	}

	public NoSuchInsuranceException(Throwable cause) {
		super(cause);
	
	}

}
