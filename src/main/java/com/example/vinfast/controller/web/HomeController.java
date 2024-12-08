package com.example.vinfast.controller.web;

import com.example.vinfast.model.Users;
import com.example.vinfast.service.IUserService;
import com.example.vinfast.util.HttpUtil;
import com.example.vinfast.util.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.inject.Inject;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

//Đoạn mã bạn cung cấp là một Servlet trong ứng dụng web Java, xử lý các yêu cầu liên quan đến trang chủ, đăng nhập,
// đăng ký và đăng xuất. Dưới đây là giải thích chi tiết về các thành phần trong mã:


//@WebServlet(urlPatterns = {"/web-home", "/login", "/logout", "/register"})
// chỉ định rằng servlet này sẽ xử lý các yêu cầu với các URL pattern cụ thể: /web-home, /login, /logout, /register.
@WebServlet(urlPatterns = {"/web-home", "/login", "/logout", "/register"})

public class HomeController extends HttpServlet {
    ResourceBundle message = ResourceBundle.getBundle("messages");

    @Inject
    private IUserService userService;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = null;
        String action = req.getParameter("action");
        if (action != null && action.equals("login")) {
            rd = req.getRequestDispatcher("views/general/login.jsp");
            rd.forward(req, resp);
        } else if (action != null && action.equals("register")) {
            rd = req.getRequestDispatcher("views/general/registration.jsp");
            rd.forward(req, resp);
        } else if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(req, "INFUSER");
            resp.sendRedirect(req.getContextPath() + "/web-home");
        } else {
            rd = req.getRequestDispatcher("/views/web/home.jsp");
            rd.forward(req, resp);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        if (action != null && action.equals("login")) {
            Users userRequest = HttpUtil.of(req.getReader()).toModel(Users.class);
            Users user = userService.validEmailAndPassword(userRequest.getEmail(), userRequest.getPassword());
            Map<String, String> response = new HashMap<>();
            if (user != null) {
                response.put("message", message.getString("login-success"));
                response.put("status", "success");
                SessionUtil.getInstance().setValue(req, "INFUSER", user);
                String role = user.getRole();
                if (role != null && role.equalsIgnoreCase("user")) {
                    response.put("url", "/web-home");
                } else if (role != null && role.equalsIgnoreCase("admin")) {
                    response.put("url", "/admin-home");
                }
            } else {
                response.put("status", "error");
                response.put("message", message.getString("email-password-invalid"));
            }
            new ObjectMapper().writeValue(resp.getWriter(), response);
        } else if (action != null && action.equals("register")) {
            Users user = HttpUtil.of(req.getReader()).toModel(Users.class);
            Map<String, String> response = new HashMap<>();
            if(userService.emailExisted(user.getEmail())){
                response.put("message", "Tài khoản email đã tồn tại");
                response.put("status", "error");
            }else{
                userService.createAccount(user);
                response.put("message", "Đăng ký tài khoản thành công");
                response.put("status", "success");
            }
            new ObjectMapper().writeValue(resp.getWriter(), response);
        }
    }
}
