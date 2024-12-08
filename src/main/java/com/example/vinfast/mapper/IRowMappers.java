package com.example.vinfast.mapper;

import com.example.vinfast.model.Blog;
import com.example.vinfast.model.Users;

import java.sql.ResultSet;

public interface IRowMappers<T> {

    T rowMapper(ResultSet rs);

    void setProperty(T t, String fieldName, Object o);

}

//Lớp IRowMappers trong mã nguồn của bạn là một interface (giao diện) dùng để ánh xạ (map) dữ liệu từ cơ sở dữ liệu vào đối tượng Java.
//Điều này rất phổ biến khi làm việc với JDBC hoặc ORM frameworks. Dưới đây là phân tích chi tiết từng thành phần:

//IRowMappers đóng vai trò như một giao diện trừu tượng:
//Tách biệt logic ánh xạ dữ liệu: Giúp bạn không phải viết lại code ánh xạ cho từng loại đối tượng.
//Tăng tính tái sử dụng: Có thể dùng chung cho bất kỳ model nào.
//Định nghĩa tiêu chuẩn: Các lớp cụ thể (implements) phải tuân theo quy chuẩn này.

//Giao diện IRowMappers rất hữu ích để quản lý và tái sử dụng logic ánh xạ dữ liệu.
//Bạn nên viết các lớp triển khai cụ thể để ánh xạ cho từng model (ví dụ: UserRowMapper, BlogRowMapper).