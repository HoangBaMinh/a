package com.example.vinfast.mapper.impl;

import com.example.vinfast.mapper.IRowMappers;
import com.example.vinfast.model.Users;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;


//ớp UserMapper là một lớp triển khai của giao diện IRowMappers<Users>.
// Mục đích chính của lớp này là ánh xạ dữ liệu từ cơ sở dữ liệu (ResultSet) sang đối tượng Users.
// Đây là một cách sử dụng linh hoạt và hiệu quả trong lập trình Java, đặc biệt khi làm việc với JDBC.


public class UserMapper implements IRowMappers<Users> {


    //clazz lưu trữ thông tin về lớp Users (đối tượng model).
    //Thuộc tính này được dùng để truy cập các thông tin liên quan đến các trường (fields) của lớp Users thông qua Java Reflection.
    private static Class<?> clazz = Users.class;

    @Override
    public Users rowMapper(ResultSet rs) {

        //Mục đích:
        //
        //Ánh xạ từng dòng dữ liệu trong ResultSet thành một đối tượng Users.
        //Quy trình thực hiện:
        //
        //Tạo một đối tượng Users mới:
        //Đối tượng này sẽ được ánh xạ với dữ liệu từ ResultSet.
        //Lấy thông tin metadata của ResultSet:
        //ResultSetMetaData cung cấp thông tin về các cột trong kết quả truy vấn, như tên cột (getColumnName) và số lượng cột (getColumnCount).
        //Lặp qua các cột:
        //Lấy tên cột và chuẩn hóa (chuyển chữ cái đầu tiên thành chữ thường).
        //Gọi phương thức setProperty để ánh xạ giá trị từ cột tương ứng vào thuộc tính của đối tượng Users.
        //Bắt lỗi:
        //Nếu có lỗi khi truy xuất dữ liệu từ ResultSet, thông báo lỗi sẽ được in ra.

        Users user = new Users();
        try {
            ResultSetMetaData rsmd = rs.getMetaData();
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                String name = rsmd.getColumnName(i);
                name = name.substring(0, 1).toLowerCase() + name.substring(1);
                setProperty(user, name, rs.getObject(name));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return user;
    }

    //Mục đích:
    //
    //Gán giá trị o cho thuộc tính fieldName của đối tượng users.
    //Cách hoạt động:
    //
    //Tìm thuộc tính với tên fieldName:
    //Sử dụng clazz.getDeclaredField(fieldName) để lấy đối tượng Field tương ứng với tên thuộc tính.
    //Cho phép truy cập các thuộc tính private:
    //Gọi field.setAccessible(true) để có thể truy cập hoặc sửa đổi các trường private.
    //Gán giá trị:
    //Gọi field.set(users, o) để gán giá trị o vào thuộc tính của đối tượng users.
    //Bắt lỗi:
    //Nếu thuộc tính không tồn tại hoặc có lỗi truy cập, ngoại lệ NoSuchFieldException hoặc IllegalAccessException sẽ được xử lý.

    @Override
    public void setProperty(Users users, String fieldName, Object o) {
        try {
            Field field = clazz.getDeclaredField(fieldName);
            field.setAccessible(true);
            field.set(users, o);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }
}
