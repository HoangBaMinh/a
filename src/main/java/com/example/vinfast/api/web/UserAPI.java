package com.example.vinfast.api.web;

import com.example.vinfast.model.Users;
import com.example.vinfast.service.IUserService;
import com.example.vinfast.util.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
//@WebServlet: Định nghĩa đường dẫn URL /api-user để xử lý các yêu cầu liên quan đến người dùng.
//Ví dụ: Khi gửi yêu cầu PUT đến URL này, Servlet sẽ được kích hoạt.

@WebServlet(urlPatterns = "/api-user")
public class UserAPI extends HttpServlet {
    //@Inject: Sử dụng CDI (Context and Dependency Injection) để tự động gán đối tượng IUserService cho biến userService.
    //IUserService: Đây là một interface, có thể được triển khai bởi một lớp cụ thể, cung cấp các phương thức liên quan đến quản lý người dùng
    // (như cập nhật thông tin, tìm kiếm, xóa, v.v.).
    @Inject private IUserService userService;


    //ObjectMapper mapper = new ObjectMapper();

    //Sử dụng thư viện Jackson (ObjectMapper) để chuyển đổi dữ liệu giữa JSON và Java Object.
    //req.setCharacterEncoding("UTF-8");

    //Đặt mã hóa ký tự của request là UTF-8 để hỗ trợ tiếng Việt hoặc các ngôn ngữ không phải ASCII.
    //resp.setContentType("application/json");

    //Đặt định dạng trả về là JSON (application/json) để client dễ dàng xử lý dữ liệu phản hồi.
    //Đọc dữ liệu từ request:

    //java
    //Users user = HttpUtil.of(req.getReader()).toModel(Users.class);
    //HttpUtil.of(req.getReader()).toModel(Users.class): Đọc JSON từ request body và chuyển nó thành đối tượng Users.
    //Ví dụ JSON được gửi từ client:
    //json
    //{
    //  "userId": 1,
    //  "username": "johndoe",
    //  "email": "johndoe@example.com"
    //}
    //Dữ liệu trên sẽ được ánh xạ thành một đối tượng Users.
    //Gọi service để cập nhật thông tin:
    //
    //userService.updateInformation(user);
    //Sử dụng phương thức updateInformation(user) của userService để cập nhật thông tin người dùng trong cơ sở dữ liệu.
    //Ghi phản hồi về client:
    //
    //mapper.writeValue(resp.getOutputStream(), user);
    //Dữ liệu người dùng sau khi được cập nhật sẽ được trả về dưới dạng JSON.
    //Ví dụ phản hồi gửi về client:
    //json
    //Sao chép mã
    //{
    //  "userId": 1,
    //  "username": "johndoe",
    //  "email": "johndoe@example.com"
    //}

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        Users user = HttpUtil.of(req.getReader()).toModel(Users.class);
        userService.updateInformation(user);
        mapper.writeValue(resp.getOutputStream(), user);
    }
}
