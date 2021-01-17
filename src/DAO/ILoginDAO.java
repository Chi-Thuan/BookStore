package DAO;

import Model.User;

public interface ILoginDAO {
	void registerUser(User user);
	boolean isExistEmail (String email);
	User loginUser(String email, String password);
}
 