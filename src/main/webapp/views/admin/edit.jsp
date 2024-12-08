<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 03/10/2024
  Time: 9:29 CH
  To change this template use File | Settings | File Templates.
--%>
<c:url var="link" value="/api-admin-newUser"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<main id="main" class="main">
    <div class="pagetitle">
        <h1>Edit Data</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<c:url value="/admin-home"/>">Trang chủ</a></li>
                <li class="breadcrumb-item">Chỉnh sửa</li>
                <li class="breadcrumb-item active">Dữ liệu người dùng</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
    <section class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-10">
                                <div class="form-edit">
                                    <form id="form-edit">
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="title">User edit</div>
                                            </div>

                                            <div class="col-xl-6">
                                                <div class="input">
                                                    <div>
                                                        <i class="fa-solid fa-pencil"></i>
                                                        <input type="text" name="fullName" placeholder="Họ và tên" id="fullName"
                                                               value="${user.fullName}">
                                                    </div>
                                                    <div>
                                                        <i class="fa-solid fa-barcode"></i>
                                                        <input type="email" name="email" placeholder="Email" id="email" value="${user.email}">
                                                    </div>
                                                    <div>
                                                        <i class="fa-solid fa-dollar-sign"></i>
                                                        <input type="text" name="phoneNumber" placeholder="Số điện thoại" alt="phoneNumber" value="${user.phoneNumber}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input">
                                                    <div>
                                                        <i class="fa-solid fa-list-ol"></i>
                                                        <input type="text" name="address" placeholder="Địa chỉ" id="address"
                                                               value="${user.address}">
                                                    </div>
                                                    <div>
                                                        <i class="fa-solid fa-at"></i>
                                                        <input type="text" name="role" placeholder="Vai trò" id="role"
                                                               value="${user.role}">
                                                    </div>
                                                    <div>
                                                        <i class="fa-solid fa-upload"></i>
                                                        <input type="text" name="accountType" placeholder="Loại tài khoản" id="accountType"
                                                               value="${user.accountType}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-12">
                                                <div class="button">
                                                    <c:if test="${not empty user.userId}">
                                                        <button type="button" id="AddOrUpdBtn">Update</button>
                                                    </c:if>
                                                    <c:if test="${empty user.userId}">
                                                        <button type="button" id="AddOrUpdBtn">Save</button>
                                                    </c:if>
                                                    <button type="button">Discart</button>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="hidden" id="userId" name="userId" value="${user.userId}">
                                    </form>
                                </div>
                            </div>
                            <div class="upload-image col-lg-2">
                                <div id="image">
                                    <c:if test="${not empty user.userId}">
                                        <img src="${pageContext.request.contextPath}/template/web/img/${user.avatar}" id="uploadedImage"
                                             style="width: 100%">
                                    </c:if>
                                </div>
                                <form>
                                    <label for="file-upload" class="custom-file-upload">
                                        Custom Upload
                                    </label>
                                    <input id="file-upload" type="file" name="file"/>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
    $(function () {
        $('#file-upload').on('change', function (event) {
            var imgElement = $('<img>');
            imgElement.attr('src', URL.createObjectURL(event.target.files[0]));
            imgElement.css('width', '100%');

            $('#uploadedImage').remove();

            imgElement.attr('id', 'uploadedImage');
            $('#image').append(imgElement);
        });

        $('#AddOrUpdBtn').click(async function (e) {
            e.preventDefault();
            var data = {};
            var formData = $('#form-edit').serializeArray();
            $.each(formData, function (i, v) {
                data[v.name] = v.value;
            })
            // await saveImage('PATCH', data);
            var id = $('#userId').val();
            if (id == "") {
                addBook(data);
            } else {
                updateBook(data);
            }
        })

        function addBook(data) {
            if (confirm("Are you sure you want to save this book?")) {
                $.ajax({
                    url: '${link}',
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify(data),
                    dataType: 'json',
                    success: function () {
                        alert("Add successful");
                        window.location.href = ('/admin-users?type=list');
                    },
                    error: function (error) {
                        alert("Add successful");
                        window.location.href = ('/admin-users?type=list');
                        // alert('An error occurred: ' + error.responseText);
                    }
                })
            }

        }

        function updateBook(data) {
            if (confirm("Are you sure you want to update this book?")) {
                $.ajax({
                    url: '${link}',
                    type: 'PUT',
                    contentType: 'application/json',
                    data: JSON.stringify(data),
                    dataType: 'json',
                    success: function (result) {
                        alert("Update successful");
                        window.location.href = ('/admin-book?type=list');
                    },
                    error: function (error) {
                        alert("Add successful");
                        window.location.href = ('/admin-users?type=list');
                        // alert('An error occurred: ' + error.responseText);
                    }
                })
            }
        }

        async function saveImage(typ, data) {
            var formDt = new FormData();
            var fileInput = $('#file-upload')[0].files[0];
            if(fileInput){
                formDt.append('file', fileInput);
            }

            try {
                const response = await fetch('/api-admin-newUser', {
                    method: typ,
                    body: formDt
                });

                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }

                const respond = await response.json();

                data["image"] = respond.fileName;

            } catch (error) {
                alert('Có lỗi xảy ra:' + error);
            }
        }
    });
</script>
