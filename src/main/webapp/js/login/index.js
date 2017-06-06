/**
 * Created by zy on 2017/5/13.
 */
$(function () {
   $(document).ready(function () {
       if ($.cookie("rmbUser") == "true") {
           $("#ck_rmbUser").attr("checked", true);
           $("#username").val($.cookie("username"));
           $("#password").val($.cookie("password"));
       }
   });
   $(document).keydown(function (event) {
       if (event.keyCode == 13){
          $('#subBtn').click();
          return false;
       }
   });
   $('#subBtn').click(function () {
       $.ajax({
           url: 'user/login',
           type: 'POST',
           data: {
               'username': $('#username').val(),
               'password': $.md5($("#password").val())
           },
           dataType: 'JSON',
           success: function (data) {
               if (data.code == "1"){
                   Save();
                   parent.location.href = "user/index";
               } else if (data.code == "2"){
                   $('#hint').html('<span>用户名或密码错误</span>');
                   $('#hint').attr("class", "alert alert-danger");
               }
           }
       });
   });
});
function Save() {
    if ($("#ck_rmbUser").is(':checked')) {
        var str_username = $("#username").val();
        var str_password = $("#password").val();
        $.cookie("rmbUser", "true", { expires: 7 }); //存储一个带7天期限的cookie
        $.cookie("username", str_username, { expires: 7 });
        $.cookie("password", str_password, { expires: 7 });
    }
    else {
        $.cookie("rmbUser", "false", { expire: -1 });
        $.cookie("username", "", { expires: -1 });
        $.cookie("password", "", { expires: -1 });
    }
}
