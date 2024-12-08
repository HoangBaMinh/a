<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 05/10/2024
  Time: 12:47 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:url var="link" value="/api-admin-newUser"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/assets/css/mdb.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/assets/css/table.css">
</head>
<body>
<main id="main" class="main">
    <div class="pagetitle">
        <h1>Chỉnh sửa dữ liệu</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="">Trang chủ</a></li>
                <li class="breadcrumb-item">Dữ liệu</li>
                <li class="breadcrumb-item active">Dữ liệu sản phẩm</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
    <section class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <form action="" id="form-submit" method="get">
                            <div class="content-2-1 d-flex justify-content-between align-items-center mt-2">
                                <div class="title">
                                    Tên: Danh sách người dùng
                                </div>
                                <div class="icon">
                                    <button type="button" id="addBtn">Thêm bản ghi<i
                                            class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                            <hr>
                            <div class="desc">Giao diện hỗ trợ các tính năng như tìm kiếm, sắp xếp, phân trang, và các
                                nút hành động như Chỉnh sửa, Xoá. Người quản trị có thể nhanh chóng quản lý dữ liệu sản
                                phẩm với các thao tác trực quan, đồng thời lọc và xuất dữ liệu khi cần thiết.
                            </div>
                            <div class="content-2-2 d-flex justify-content-between">
                                <div class="show d-flex align-items-center">
                                    Show
                                    <select name="limit" id="selectOp">
                                        <option value="5">5</option>
                                        <option value="10">10</option>
                                        <option value="15">15</option>
                                        <option value="20">20</option>
                                    </select>
                                    entries
                                </div>
                                <div class="search-child">
                                    Search:
                                    <input type="search" name="keyword" id="search">
                                </div>
                            </div>
                            <table>
                                <tr>
                                    <th></th>
                                    <th>Ảnh</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Hãng</th>
                                    <th>Thể loại</th>
                                    <th>Tồn kho</th>
                                    <th>Giá</th>
                                    <th>Khuyến mãi</th>
                                    <th>Thiết lập</th>
                                </tr>
                                <tr th:each="item: ${products}" th:id="'product_' + ${item.productId}"
                                    th:data-id="${item.productId}">
                                    <td><input type="radio"></td>
                                    <td>
                                        <div class="image"><img src="" alt="anh"></div>
                                    </td>
                                    <td th:text="${item.name}"></td>
                                    <td th:text="${item.brand.name}"></td>
                                    <td th:text="${item.category.name}"></td>
                                    <td th:text="${item.stockQuantity}"></td>
                                    <td th:text="${item.price}"></td>
                                    <td th:text="${item.discount}"></td>
                                    <td>
                                        <ul class="action-list">
                                            <li>
                                                <button type="button" class="editBtn btn btn-primary"><i
                                                        class="fa fa-pencil-alt"></i></button>
                                            </li>
                                            <li>
                                                <button type="button" class="deleteBtn btn btn-danger"><i
                                                        class="fa fa-times"></i></button>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </form>
                        <div class="paging">
                            <ul id="pagination-demo" class="pagination-sm"></ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="overlay"></div> <!-- Lớp nền tối -->

    <div id="myForm">
        <div class="title">
            <h3>Nhập thông tin sản phẩm</h3>
            <button class="close-btn" id="closeFormBtn">X</button> <!-- Nút đóng -->
        </div>

        <form id="form-product">
            <input type="hidden" name="productId">
            <div class="row">
                <div class="col-xl-8">
                    <div class="row">
                        <div class="col-md-6 mb-4">
                            <div data-mdb-input-init class="form-outline">
                                <input type="text" id="name" name="name"
                                       class="form-control form-control-lg"/>
                                <label class="form-label" for="name">Tên sản phẩm</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div data-mdb-input-init class="form-outline">
                                <input type="text" id="price" name="price" class="form-control form-control-lg"/>
                                <label class="form-label" for="price">Giá sản phẩm</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div data-mdb-input-init class="form-outline">
                                <input type="text" id="stockQuantity" name="stockQuantity"
                                       class="form-control form-control-lg"/>
                                <label class="form-label" for="stockQuantity">Số lượng</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div data-mdb-input-init class="form-outline">
                                <input type="text" id="discount" name="discount" class="form-control form-control-lg"/>
                                <label class="form-label" for="discount">Giảm giá</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <select id="categorySelect">
                                <option th:each="item: ${categories}" th:value="${item.categoryId}"
                                        th:text="${item.name}" name="categoryId">State
                                </option>
                            </select>
                        </div>
                        <div class="col-md-6 mb-4">
                            <select id="brandSelect">
                                <option th:each="item: ${brands}" th:value="${item.brandId}" th:text="${item.name}"
                                        name="brandId">City
                                </option>
                            </select>
                        </div>
                        <div>
                            <div data-mdb-input-init class="form-outline">
                                <textarea id="description" class="form-control" rows="3"
                                          placeholder="Message sent to the employer"></textarea>
                                <label class="form-label" for="description">Mô tả</label>
                            </div>
                        </div>
                        <div class="btn-form">
                            <button type="button" id="confirmBtn">Xác nhận</button>
                            <button type="button" id="uploadBtn">Đẩy ảnh</button>
                            <button type="button" id="cancelBtn">Hủy bỏ</button>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4">
                    <div class="image">
                        <img src="" alt="">
                    </div>
                </div>
            </div>
        </form>
    </div>
</main>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="${pageContext.request.contextPath}/template/admin/assets/js/mdb.umd.min.js"></script>
<script>
    var totalP = ${books.totalPage};
    var currentP = ${books.page};
    var visibleP = ${books.limit};
    $(function () {
        window.pagObj = $('#pagination-demo').twbsPagination({
            totalPages: totalP,
            visiblePages: visibleP,
            startPage: currentP,

            onPageClick: function (event, page) {
                $('#page-content').text('Page ' + page);
                $('#page').val(page);
                if (page != currentP) {
                    $('#form-submit').submit();
                }
            }
        });
        $('#search').keypress(function (event) {
            if (event.which == 13) {
                $('#form-submit').submit();
            }
        })
        $('.deleteBtn').click(function () {
            var data = {userId: $(this).data('id')};
            if (confirm('Are you sure want to delete this book?')) {
                $.ajax({
                    url: '${link}',
                    type: 'DELETE',
                    contentType: 'application/json',
                    data: JSON.stringify(data),
                    success: function (response) {
                        alert('Delete successful!');
                        location.reload();
                    },
                    error: function (error) {
                        alert('Have error');
                    }
                });
            }
        });
    });
</script>
</body>
</html>


