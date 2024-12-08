package com.example.vinfast.dao.impl;

import com.example.vinfast.dao.IUsersDAO;
import com.example.vinfast.mapper.impl.UserMapper;
import com.example.vinfast.model.Users;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Named;

import java.util.List;

@Named
@ApplicationScoped
public class UserDAO extends AbstractDAO<Users> implements IUsersDAO {
    @Override
    public int checkAccountExistence(String email) {
        String query = "SELECT COUNT(*) FROM Users WHERE email = ?;";
        return count(query, email);
    }

    @Override
    public void createAccount(Users user) {
        String query =
                """
				INSERT INTO Users(FullName, Email, Password, PhoneNumber, Address)
				VALUES (?, ?, ?, ?, ?);
				""";
        insert(
                query,
                user.getFullName(),
                user.getEmail(),
                user.getPassword(),
                user.getPhoneNumber(),
                user.getAddress()
        );
    }

    @Override
    public Users findUserByEmail(String email) {
        String query =
                """
				SELECT UserID, FullName, Email, Gender, Dob, Password, PhoneNumber, Address, Role, AccountType, Status, CreatedAt, lastLogined, avatar
				FROM Users
				WHERE Email = ?;
				""";
        List<Users> list = query(query, new UserMapper(), email);
        return list.isEmpty() ? null : list.getFirst();
    }

    @Override
    public void updateAccount(Users user) {
        String query =
                """
				UPDATE Users SET FullName = ?, Email = ?, PhoneNumber = ?, Address = ?, Dob = ?, Gender = ?
				WHERE userId = ?;
				""";
        update(query, user.getFullName(), user.getEmail(), user.getPhoneNumber(), user.getAddress(),
                user.getDob(), user.getGender(), user.getUserId());
    }

    @Override
    public void changePassword(String email, String newPassword) {
        String query = """
				UPDATE Users SET password = ? WHERE email = ?;
				""";
        update(query, newPassword, email);
    }

    @Override
    public List<Users> findAllUsers() {
        String query = "SELECT UserID, FullName, Email, Gender, Dob, Password, PhoneNumber, Address, Role, AccountType, Status, CreatedAt, lastLogined, avatar FROM Users";
        return query(query, new UserMapper());
    }

    @Override
    public void deleteUser(int id) {
        String query = "DELETE FROM user WHERE user_id = ?;";
        delete(query, id);
    }

    @Override
    public Users findById(int id) {
        String query =
                """
				SELECT UserID, FullName, Email, Password, Dob, Gender ,PhoneNumber, Address, Role, AccountType, Status, CreatedAt, lastLogined, avatar
				FROM Users
				WHERE UserId = ?;
				""";
        List<Users> list = query(query, new UserMapper(), id);
        return list.isEmpty() ? null : list.getFirst();
    }

//    public static void main(String[] args) {
//        //FullName, Email, Password, PhoneNumber, Address
//        Users u = Users.builder().fullName("Nguyễn Văn Hậu Giang").email("test@gmail.com")
//                .phoneNumber("1231324324").address("bac ninh").role("admin").build();
//        IUsersDAO dao = new UserDAO();
//
//    }
}
