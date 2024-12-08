package com.example.vinfast.dao.impl;


import com.example.vinfast.dao.ConnecttionPool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Stack;

public class ConnectionPoolImpl implements ConnecttionPool {

    private String driver;
    private String username;
    private String password;
    private String url;

    private Stack<Connection> pool;

    // Singleton design pattern
    private static ConnecttionPool cp=null;

    private ConnectionPoolImpl() {
        // TODO Auto-generated constructor stub
        // xác định trình điểu khiển
        this.driver = "com.mysql.cj.jdbc.Driver";

        // xác định đường dẫn chạy MysQL
        ///allowMultiQueries=true
        this.url = "jdbc:mysql://localhost:3306/tranhanh_data";

        // xác định tài khoản làm việc
        this.username = "tranhanh_giangnv";
        this.password = "@123$%65";
        //@123$%65
        // nạp trình điều khiển
        try {
            Class.forName(this.driver);
        } catch (ClassNotFoundException e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        //Khởi tạo bộ nhớ lưu trữ đối tượng kết nối
        this.pool = new Stack<Connection>();
    }


    @Override
    public Connection getConnection(String objectname) throws SQLException {
        // TODO Auto-generated method stub
        if(this.pool.isEmpty()) {
            System.out.println(objectname + " have created a new Connection");
            return DriverManager.getConnection(this.url, this.username, this.password);
        }else {
            System.out.println(objectname + " have poped the Connection");
            return this.pool.pop();
        }
    }

    @Override
    public void releaseConnection(Connection con, String objectName) throws SQLException {
        // TODO Auto-generated method stub
        System.out.println(objectName + " have pushed the Connection");
        this.pool.push(con);
    }

    public static ConnecttionPool getInstance() {
        if(cp == null) {
            synchronized (ConnectionPoolImpl.class) {
                if(cp == null)
                    cp = (ConnecttionPool) new ConnectionPoolImpl();
            }
        }
        return cp;
    }
}
