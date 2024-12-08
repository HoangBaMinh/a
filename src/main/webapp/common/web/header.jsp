<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 27/09/2024
  Time: 9:20 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header id="header" class="header fixed-top">

    <div class="topbar d-flex align-items-center">
        <div class="container d-flex justify-content-end justify-content-md-between">
            <div class="contact-info d-flex align-items-center">
                <i class="bi bi-phone d-flex align-items-center d-none d-lg-block"><span>+1 5589 55488 55</span></i>
                <i class="bi bi-clock ms-4 d-none d-lg-flex align-items-center"><span>Mon-Sat: 11:00 AM - 23:00 PM</span></i>
            </div>
            <div>
                <a href="<c:url value="/login?action=login"/>" class="cta-btn">Đăng nhập</a>
                <a href="<c:url value="/register?action=register"/>" class="cta-btn">Đăng ký</a>
            </div>

        </div>
    </div><!-- End Top Bar -->

    <div class="branding d-flex align-items-cente">

        <div class="container position-relative d-flex align-items-center justify-content-between">
            <a href="index.html" class="logo d-flex align-items-center">
                <img src="${pageContext.request.contextPath}/template/general/img/logo.png" alt="">
            </a>

            <nav id="navmenu" class="navmenu">
                <ul>
                    <li><a href="#hero" class="active">Trang chủ</a></li>
                    <li><a href="#about">Giới thiệu</a></li>
                    <li><a href="#menu">Sản phẩm</a></li>
                    <li><a href="#specials">Đặc biệt</a></li>
                    <li><a href="#events">Sự kiện</a></li>
                    <li><a href="#chefs">Lãnh đạo</a></li>
                    <li><a href="#gallery">Thể loại</a></li>
                    <li class="dropdown"><a href="#"><span>Categories</span> <i
                            class="bi bi-chevron-down toggle-dropdown"></i></a>
                        <ul>
                            <li><a href="#">Drama</a></li>
                            <li><a href="#">Fiction</a></li>
                            <li><a href="#">Travel Guids</a></li>
                            <li><a href="#">History</a></li>
                            <li><a href="#">Comics</a></li>
                        </ul>
                    </li>
                    <li><a href="#contact">Liện </a></li>
                </ul>
                <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
            </nav>

        </div>

    </div>

</header>
