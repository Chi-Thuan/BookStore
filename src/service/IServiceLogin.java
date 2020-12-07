package service;

import Model.User;

public interface IServiceLogin {
	boolean checkEmail(String email);
	void registerUser(User user);
	User loginUser(String email, String password);
}
