/**
 * Created by zy on 2017/5/14.
 */
$(function () {
    $('#registerForm').validate({
        rules: {
            username: {
                required: true,
                minlength: 4
            },
            realName: "required",
            password: {
                required: true,
                minlength: 5
            }
        },
        message: {
            username: {
                required: "请输入用户名",
                minlength: "最少为四位"
            },
            realName: "不为空",
            password: {
                required: "不能为空",
                minlength: "最少为五位"
            }
        }
    });
   $('#subBtn').click(function () {
       $.ajax({
           url:  "user/register",
           type: "POST",
           data: {
               "username": $('#username').val(),
               "realName": $('#realname').val(),
               "realId": $('#realid').val(),
               "phone": $('#phone').val(),
               "password": $('#password').val()
           },
           dataType: "JSON",
           success: function (data) {
               if (data.code == "1"){
                   location.href = "login.jsp";
               } else if (data.code == "2"){
                   $('#hint').html('<span>' + data.content + '</span>');
                   $('#hint').attr("class", "alert alert-danger");
               }
           }
       });
   });
});