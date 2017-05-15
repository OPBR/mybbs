/**
 * Created by zy on 2017/5/14.
 */
var zy = {};
zy.GetLength = function(str) {
    var realLength = 0, len = str.length, charCode = -1;
    for (var i = 0; i < len; i++) {
        charCode = str.charCodeAt(i);
        if (charCode >= 0 && charCode <= 128) realLength += 1;
        else realLength += 2;
    }
    return realLength;
};
$(function () {
    $(document).keydown(function (event) {
        if (event.keyCode == 13){
            $('#registerForm').submit();
        }
    });
    $('input').on('keyup', function () {
        $('#hint').attr("class", "alert alert-danger display-hide");
        return false;
    });

    $('#registerForm').submit(function () {
       $('#subBtn').click();
       $("input").blur();
       return false;
   });
    $('#subBtn').click(function () {
        var idCard = /^\d{6}(18|19|20)?\d{2}(0[1-9]|1[12])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/i;
        var phone = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
        if (zy.GetLength($('#username').val()) < 4){
           $('#hint').html('<span>用户名太短</span>');
           $('#hint').attr("class", "alert alert-danger");
           return false;
       }
       if ($('#realname').val().length == 0){
           $('#hint').html('<span>请输入有效真实姓名</span>');
           $('#hint').attr("class", "alert alert-danger");
           return false;
       }
       if (idCard.test($('#realid').val()) == false){
           $('#hint').html('<span>请输入有效身份证号</span>');
           $('#hint').attr("class", "alert alert-danger");
           return false;
       };
       if (phone.test($('#phone').val()) == false){
           $('#hint').html('<span>请输入有效手机号</span>');
           $('#hint').attr("class", "alert alert-danger");
           return false;
       };
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