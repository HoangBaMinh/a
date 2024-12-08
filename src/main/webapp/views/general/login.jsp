
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 17/11/2024
  Time: 10:41 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Login Template</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
            integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.14.5/sweetalert2.css" integrity="sha512-6qScZESleBziOBqJwOPurSy6lhLqHGjHNALOOFX0mzRVPiE5SZQvepRzeSO1OB475fcZywuMjxtkrFaO93aq9g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/general/css/login.css"/>
</head>

<body>
<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
        <div class="card login-card">
            <div class="row no-gutters">
                <div class="col-md-5">
                    <img
                            src="${pageContext.request.contextPath}/template/general/img/login.png"
                            alt="login"
                            class="login-card-img"
                    />
                </div>
                <div class="col-md-7">
                    <div class="card-body">
                        <div class="brand-wrapper">
                            <img src="${pageContext.request.contextPath}/template/general/img/logo.png" alt="logo" class="logo"/>
                        </div>
                        <p class="login-card-description">
                            Đăng nhập tài khoản của bạn
                        </p>
                        <form id="form">
                            <div class="form-group">
                                <label for="email" class="sr-only">Email</label>
                                <input
                                        type="email"
                                        name="email"
                                        id="email"
                                        class="form-control"
                                        placeholder="Email"
                                />
                            </div>
                            <div class="form-group mb-4">
                                <label for="password" class="sr-only">Mật khẩu</label>
                                <input
                                        type="password"
                                        name="password"
                                        id="password"
                                        class="form-control"
                                        placeholder="***********"
                                />
                            </div>
                            <a href="@" class="forgot-password-link">Quên mật khẩu?</a>
                            <p class="login-card-footer-text">
                                Bạn chưa có tài khoản?
                                <a href="<c:url value="/register?action=register"/>" class="text-reset">Đăng ký tại đây</a>
                            </p>
                            <!-- Nút Login -->
                            <button
                                    id="loginBtn"
                                    class="btn btn-block login-btn mb-4"
                                    type="button"
                            >Đăng nhập</button>
                        </form>

                        <div class="link">
                            <div class="forgot-password-link">--Hoặc đăng nhập với--</div>
                            <div class="nav-link">
                    <span class="icon text-white d-flex justify-content-center align-items-center">
                        <i class="fa-brands fa-facebook-f"></i>
                    </span>
                                <span class="icon text-white d-flex justify-content-center align-items-center">
                                    <i class="fa-brands fa-google"></i>
                                </span>
                                <span class="icon text-white d-flex justify-content-center align-items-center">
                                    <i class="fa-brands fa-instagram"></i>
                                </span>
                            </div>
                        </div>
                        <nav class="login-card-footer-nav">
                            <a href="#!">Điều khoản sử dụng.</a>
                            <a href="#!">Chính sách bảo mật</a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.14.5/sweetalert2.min.js" integrity="sha512-JCDnPKShC1tVU4pNu5mhCEt6KWmHf0XPojB0OILRMkr89Eq9BHeBP+54oUlsmj8R5oWqmJstG1QoY6HkkKeUAg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="${pageContext.request.contextPath}/template/general/js/login.js"></script>
</body>
</html>

