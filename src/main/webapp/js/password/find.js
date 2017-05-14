/**
 * Created by zy on 2017/5/14.
 */
$(function () {
   $('#subBtn').click(function () {
       $.ajax({
           url: "user/find",
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
                   $('#hint').attr("class", "alert alert-danger");
               }
           }
       });
   });
});