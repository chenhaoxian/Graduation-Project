package service;

public interface UserOperationService {
	boolean sendContactEmail(String name, String email, String msg);
	boolean sendContactMessage(String name, String email, String msg);

}
