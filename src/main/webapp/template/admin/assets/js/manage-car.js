$(function() {
    $('#addBtn').click(function() {
        $('#overlay').show();
        $('#myForm').show();
    });

    $('#closeFormBtn').click(function() {
        $('#overlay').hide();
        $('#myForm').hide();
    });

    $('#cancelBtn').click(function(){
        $('#overlay').hide();
        $('#myForm').hide();
    })

    $('#overlay').click(function() {
        $('#overlay').hide();
        $('#myForm').hide();
    });

    $('.editBtn').click(function(e) {
        e.preventDefault()
        var row = $(this).closest('tr');  // Lấy dòng chứa nút
        var productId = row.data('id');    // Lấy giá trị của data-id

        $.ajax({
            url: 'products/' + productId,
            type: 'GET',
            dataType: 'json',
            success: function (response) {
                $('#name').val(response.data.name)
                $('#discount').val(response.data.discount)
                $('#price').val(response.data.price)
                $('#stockQuantity').val(response.data.stockQuantity)
                $('#description').val(response.data.description)
                $('#categorySelect').val(response.data.category.categoryId);
                $('#brandSelect').val(response.data.brand.brandId);

                $('#overlay').show();
                $('#myForm').show();
            },
            error: function (xhr, status, error) {
                console.error("Lỗi khi lấy dữ liệu sản phẩm:", error);
                alert("Không thể lấy thông tin sản phẩm. Vui lòng thử lại!");
            }
        })
    });

    $('#confirmBtn').click(function () {
        var data = {}
        var formData = $('#form-product').serializeArray()
        var type
        formData.forEach(item => data[item.name] = item.value)
        if($('#productId') != null){
            type = 'PUT'
        }else{
            type = 'POST'
        }
        Swal.fire({
            title: "Do you want to save the changes?",
            showDenyButton: true,
            showCancelButton: true,
            confirmButtonText: "Save",
            denyButtonText: `Don't save`
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: 'efashion/admin/products',
                    type: type,
                    contentType: 'application/json',
                    data: JSON.stringify(data),
                    dataType: 'json',
                    success: function (response) {
                        Swal.fire("Đã lưu!", "", response.message);
                        $('#overlay').hide()
                        $('#myForm').hide()
                    },
                    error: function (xhr) {
                    }
                })
            } else if (result.isDenied) {
                Swal.fire("Changes are not saved", "", "info");
                $('#overlay').hide()
                $('#myForm').hide()
            }
        });

    })

    $('.deleteBtn').click(function () {
        e.preventDefault()
        var row = $(this).closest('tr');  // Lấy dòng chứa nút
        var productId = row.data('id');    // Lấy giá trị của data-id
        Swal.fire({
            title: "Bạn có chắc chắn không?",
            text: "Bạn sẽ không thể hoàn tác!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Vâng, xóa nó!"
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "products/" + productId,
                    type: 'DELETE',
                    dataType: 'json',
                    success: function (response) {
                        Swal.fire({
                            title: "Đã xóa!",
                            text: "Sản phẩm đã bị xóa.",
                            icon: "success"
                        });
                    },
                    error: function () {
                    }
                })
            }
        });
    })
});
