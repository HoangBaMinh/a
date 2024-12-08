package com.example.vinfast.dao.impl;

import com.example.vinfast.dao.GenericDAO;
import com.example.vinfast.mapper.IRowMappers;

import java.math.BigDecimal;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;


//Lớp AbstractDAO này là lớp cơ sở cung cấp các phương thức cơ bản để thực hiện các thao tác CRUD với cơ sở dữ liệu.
// Các lớp DAO khác, ví dụ như UserDAO, sẽ kế thừa lớp này và triển khai các phương thức riêng cho từng đối tượng dữ liệu.
public class AbstractDAO<T> implements GenericDAO<T> {
    ResourceBundle bundle = ResourceBundle.getBundle("db");


    //getConnection():
    //Phương thức này tạo và trả về một kết nối đến cơ sở dữ liệu thông qua JDBC.
    //Nó đọc các thông tin kết nối (tên driver, URL, username, password) từ tệp cấu hình (db.properties).
    public Connection getConnection() {
        Connection cnt = null;
        try {
            Class.forName(bundle.getString("driverName"));
            cnt = DriverManager.getConnection(bundle.getString("url"), bundle.getString("user"), bundle.getString("password"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cnt;
    }

    //query():
    //Thực thi một truy vấn và ánh xạ kết quả trả về từ ResultSet thành một danh sách các đối tượng bằng cách sử dụng IRowMappers.
    //Sử dụng câu lệnh chuẩn bị (PreparedStatement) để bảo mật và tránh SQL injection.
    @Override
    public <T> List<T> query(String query, IRowMappers<T> rowMapper, Object... prm) {
        List<T> list = new ArrayList<>();
        Connection cnt = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            cnt = getConnection();
            pr = cnt.prepareStatement(query);
            setParameter(pr, prm);
            rs = pr.executeQuery();
            while (rs.next()) {
                list.add(rowMapper.rowMapper(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(rs != null) rs.close();
                if(pr != null) pr.close();
                if(cnt != null) cnt.close();
            }catch (SQLException se){
                se.printStackTrace();
            }
        }
        return list;
    }
    //insert():
    //Thực thi một truy vấn chèn và trả về khóa chính (primary key) được sinh ra (nếu có).
    @Override
    public Integer insert(String query, Object... prm){
        Integer id = null;
        Connection cnt = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            cnt = getConnection();
            pr = cnt.prepareStatement(query, pr.RETURN_GENERATED_KEYS);
            setParameter(pr, prm);
            pr.executeUpdate();
            rs = pr.getGeneratedKeys();
            if(rs.next()) id = rs.getInt(1);
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        finally {
            try {
                if(rs != null) rs.close();
                if(pr != null) pr.close();
                if(cnt != null) cnt.close();
            }catch (SQLException se){
                se.printStackTrace();
            }
        }
        return id;
    }

    //update():
    //Thực thi một truy vấn cập nhật và thay đổi dữ liệu trong cơ sở dữ liệu.
    @Override
    public void update(String query, Object... prm) {
        Connection cnt = null;
        PreparedStatement pr = null;
        try {
            cnt = getConnection();
            pr = cnt.prepareStatement(query);
            setParameter(pr, prm);
            pr.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try {
                if(pr != null) pr.close();
                if(cnt != null) cnt.close();
            }catch (SQLException ex){
                System.out.println(ex.getMessage());
            }
        }
    }

    //delete():
    //Thực thi một truy vấn xóa để xóa các bản ghi khỏi cơ sở dữ liệu.
    @Override
    public void delete(String query, Object... prm) {
        Connection cnt = null;
        PreparedStatement pr = null;
        try {
            cnt = getConnection();
            pr = cnt.prepareStatement(query);
            setParameter(pr, prm);
            pr.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try {
                if(pr != null) pr.close();
                if(cnt != null) pr.close();
            }catch (SQLException ex){
                ex.printStackTrace();
            }
        }
    }

    //count():
    //Thực thi một truy vấn đếm (ví dụ: SELECT COUNT(*)) và trả về số lượng bản ghi phù hợp.
    @Override
    public Integer count(String query, Object... prm) {
        Connection cnt = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        int count = 0;
        try {
            cnt = getConnection();
            pr = cnt.prepareStatement(query);
            setParameter(pr, prm);
            rs = pr.executeQuery();
            if(rs.next()) count = rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(rs != null) rs.close();
                if(pr != null) pr.close();
                if(cnt != null) cnt.close();
            }catch (SQLException se){
                se.printStackTrace();
            }
        }
        return count;
    }

    //setParameter():
    //Liên kết các tham số với câu lệnh chuẩn bị (PreparedStatement), đảm bảo các kiểu dữ liệu Java được ánh xạ đúng sang các kiểu dữ liệu SQL.
    //Hỗ trợ nhiều kiểu dữ liệu như String, Integer, Boolean, LocalDate, BigDecimal, v.v.
    public void setParameter(PreparedStatement ps, Object... prm) throws SQLException {
        for (int i = 0; i < prm.length; i++) {
            if (prm[i] == null) {
                ps.setObject(i + 1, null);
                continue;
            }

            switch (prm[i].getClass().getSimpleName()) {
                case "String" -> ps.setString(i + 1, (String) prm[i]);
                case "Integer" -> ps.setInt(i + 1, (Integer) prm[i]);
                case "Double" -> ps.setDouble(i + 1, (Double) prm[i]);
                case "Boolean" -> ps.setBoolean(i + 1, (Boolean) prm[i]);
                case "Date" -> ps.setDate(i + 1, (Date) prm[i]);
                case "Timestamp" -> ps.setTimestamp(i + 1, (Timestamp) prm[i]);
                case "Long" -> ps.setLong(i + 1, (Long) prm[i]);
                case "Float" -> ps.setFloat(i + 1, (Float) prm[i]);
                case "BigDecimal" -> ps.setBigDecimal(i + 1, (BigDecimal) prm[i]);
                case "LocalDate" -> ps.setDate(i + 1, Date.valueOf((LocalDate) prm[i]));
                case "LocalDateTime" -> ps.setDate(i + 1, Date.valueOf(String.valueOf((LocalDateTime) prm[i])));
                default -> throw new SQLException(
                        "Unsupported parameter type: " + prm[i].getClass().getName());
            }
        }
    }
}
