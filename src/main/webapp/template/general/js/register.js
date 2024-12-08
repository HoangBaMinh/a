$(function () {
    $('#registerBtn').click(function (e) {
        e.preventDefault();
        var data = {}
        var formData = $('#form-register').serializeArray()
        formData.forEach(item => data[item.name] = item.value)
        $.ajax({
            url: '/vinfast_war/register?action=register',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (response) {
                if(response.status === "success"){
                    Swal.fire({
                        position: "top-end",
                        icon: "success",
                        title: response.message,
                        showConfirmButton: false,
                        timer: 1500
                    });
                    setTimeout(() => {
                        window.location.href = '/vinfast_war/login?action=login';
                    }, 1500);
                }else{
                    Swal.fire({
                        position: "top-end",
                        icon: "error",
                        title: response.message,
                        showConfirmButton: false,
                        timer: 1500
                    });
                }
            },
            error: function (error) {
                Swal.fire({
                    position: "top-end",
                    icon: "error",
                    title: "Đăng ký thất bại",
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        })
    })
})