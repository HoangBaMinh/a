<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 17/11/2024
  Time: 2:55 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:url var="link" value="/register?action=register"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.14.5/sweetalert2.css" integrity="sha512-6qScZESleBziOBqJwOPurSy6lhLqHGjHNALOOFX0mzRVPiE5SZQvepRzeSO1OB475fcZywuMjxtkrFaO93aq9g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Google Fonts Roboto -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
    <!-- MDB -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/assets/css/mdb.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/general/css/register.css"/>
    <title>Đăng ký</title>
</head>

<body>
<section class="vh-100 bg-image"
         style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
    <div class="mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="card" style="border-radius: 15px;">
                        <div class="card-body p-5">
                            <h2 class="text-uppercase text-center mb-5">Tạo tài khoản</h2>

                            <form id="form-register">
                                <div data-mdb-input-init class="form-outline mb-4">
                                    <input type="email" id="fullName" name="fullName" class="form-control form-control-lg" />
                                    <label class="form-label" for="fullName">Họ và </label>
                                </div>

                                <div data-mdb-input-init class="form-outline mb-4">
                                    <input type="email" id="email" name="email" class="form-control form-control-lg" />
                                    <label class="form-label" for="email">Email</label>
                                </div>

                                <div data-mdb-input-init class="form-outline mb-4">
                                    <input type="password" id="password" name="password"
                                           class="form-control form-control-lg" />
                                    <label class="form-label" for="password">Mật khẩu</label>
                                </div>

                                <div data-mdb-input-init class="form-outline mb-4">
                                    <input type="password" id="re-password"
                                           class="form-control form-control-lg" />
                                    <label class="form-label" for="re-password">Nhập lại mật khẩu</label>
                                </div>

                                <div class="form-check d-flex justify-content-center mb-5">
                                    <input class="form-check-input me-2" type="checkbox" value=""
                                           id="form2Example3cg" />
                                    <label class="form-check-label" for="form2Example3cg">
                                        Tôi đồng ý với tất cả <a href="#!" class="text-body"><u>Điều khoản của dịch vụ</u></a>
                                    </label>
                                </div>

                                <div class="d-flex justify-content-center">
                                    <button type="button" data-mdb-button-init data-mdb-ripple-init
                                            class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" id="registerBtn">Đăng ký</button>
                                </div>

                                <p class="text-center text-muted mt-5 mb-0">Bạn đã có tài khoản? <a href="<c:url value="/login?action=login"/>"
                                                                                                    class="fw-bold text-body"><u>Đăng nhập tại đây</u></a></p>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- MDB -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/admin/assets/js/mdb.umd.min.js"></script>
<!-- Custom scripts -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.14.5/sweetalert2.min.js" integrity="sha512-JCDnPKShC1tVU4pNu5mhCEt6KWmHf0XPojB0OILRMkr89Eq9BHeBP+54oUlsmj8R5oWqmJstG1QoY6HkkKeUAg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="${pageContext.request.contextPath}/template/general/js/register.js"></script>
</body>
</html>
