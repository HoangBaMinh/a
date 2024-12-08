package com.example.vinfast.service.impl;

import com.example.vinfast.dao.IUsersDAO;
import com.example.vinfast.dao.impl.UserDAO;
import com.example.vinfast.model.Users;
import com.example.vinfast.service.IUserService;
import com.example.vinfast.util.Argon2Util;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Named;

import java.util.List;

@Named
@ApplicationScoped
public class UserService implements IUserService {

//    @Inject
    IUsersDAO usersDAO = new UserDAO();

    @Override
    public void createAccount(Users user) {
        user.setPassword(Argon2Util.encyptPass(user.getPassword()));
        usersDAO.createAccount(user);
    }

    @Override
    public Users validEmailAndPassword(String email, String password) {
        Users user = usersDAO.findUserByEmail(email);
        if(user != null && Argon2Util.checkPass(password, user.getPassword())){
            return user;
        }
        return null;
    }

    @Override
    public boolean emailExisted(String email) {
        return usersDAO.checkAccountExistence(email) > 0;
    }

    @Override
    public void updateInformation(Users user) {
        usersDAO.updateAccount(user);
    }

    @Override
    public List<Users> findAll() {
        return usersDAO.findAllUsers();
    }

    @Override
    public Users finOne(int id) {
        return usersDAO.findById(id);
    }

    @Override
    public void deleteAccount(int id) {
        usersDAO.deleteUser(id);
    }
}
