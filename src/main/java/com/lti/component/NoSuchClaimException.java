package com.lti.component;

public class NoSuchClaimException extends RuntimeException {

	public NoSuchClaimException() {
		super();
	
	}

	public NoSuchClaimException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		
	}

	public NoSuchClaimException(String message, Throwable cause) {
		super(message, cause);
		
	}

	public NoSuchClaimException(String message) {
		super(message);
	
	}

	public NoSuchClaimException(Throwable cause) {
		super(cause);
		
	}
	

}
