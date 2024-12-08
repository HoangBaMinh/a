<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 27/09/2024
  Time: 9:29 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="${pageContext.request.contextPath}/template/admin/assets/img/favicon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/template/admin/assets/img/apple-touch-icon.png"
          rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="${pageContext.request.contextPath}/template/admin/assets/vendor/bootstrap/css/bootstrap.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/template/admin/assets/vendor/bootstrap-icons/bootstrap-icons.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/template/admin/assets/vendor/boxicons/css/boxicons.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/template/admin/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/template/admin/assets/vendor/quill/quill.bubble.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/template/admin/assets/vendor/remixicon/remixicon.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/template/admin/assets/vendor/simple-datatables/style.css"
          rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="${pageContext.request.contextPath}/template/admin/assets/css/style.css" rel="stylesheet">
</head>
<body>
<%@ include file="/common/admin/header.jsp" %>
<%@ include file="/common/admin/slidebar.jsp" %>
<dec:body/>
<%@ include file="/common/admin/footer.jsp" %>

<!-- Vendor JS Files -->
<script src="${pageContext.request.contextPath}/template/admin/assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/assets/vendor/chart.js/chart.umd.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/assets/vendor/echarts/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/assets/vendor/quill/quill.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/assets/vendor/tinymce/tinymce.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="${pageContext.request.contextPath}/template/admin/assets/js/main.js"></script>
</body>
</html>
