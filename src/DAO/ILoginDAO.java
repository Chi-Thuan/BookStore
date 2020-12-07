package DAO;

import Model.User;

public interface ILoginDAO {
	public void registerUser(User user);
	public boolean isExistEmail (String email);
}
