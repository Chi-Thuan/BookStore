package service.impl;

import java.security.NoSuchAlgorithmException;

import DAO.ILoginDAO;
import DAO.impl.LoginDAO;
import Model.User;
import service.IServiceLogin;

public class ServiceLogin implements IServiceLogin{
	private ILoginDAO login;
	
	public ServiceLogin() {
		this.login = new LoginDAO();
	}

	@Override
	public boolean checkEmail(String email) {
		return login.isExistEmail(email);
	}

	@Override
	public void registerUser(User user) {
		login.registerUser(user);
	}

	@Override
	public User loginUser(String email, String password) {
		try {
			return login.loginUser(email, User.hasPassword(password));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
}
