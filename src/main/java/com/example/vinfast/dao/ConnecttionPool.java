package com.example.vinfast.dao;

import java.sql.Connection;
import java.sql.SQLException;

public interface ConnecttionPool {

        Connection getConnection(String ojectname) throws SQLException;
        void releaseConnection(Connection con, String objectName) throws SQLException;
}
