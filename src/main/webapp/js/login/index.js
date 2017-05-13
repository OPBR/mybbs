/**
 * Created by DELL on 2017/5/13.
 */
$(function () {
   $(document).keydown(function (event) {
       if (event.keyCode == 13){
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
                   parent.location.href = "user/index";
               } else if (data.code == "2"){
                   $('#hint').attr("class", "alert alert-danger");
               }
           }
       });
   });
});