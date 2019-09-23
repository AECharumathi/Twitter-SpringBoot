package com.greatlearning.twitter.exception;

public class InvalidUserException extends Exception {
	public InvalidUserException(String message) {
		super(message);
	}
	public String getMessage() {
		return super.getMessage();
	}
}
