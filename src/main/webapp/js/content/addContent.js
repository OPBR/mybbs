/**
 * Created by pc on 2017/5/12.
 */
$(function () {
    $('#returnLogin').trigger("click");
    $('#subBut').on('click', function () {
       $.ajax({
           url: 'content/release',
           type: 'POST',
           data: {
               'username' : $("#hidInput").val(),
               'title' : $("#title").val(),
               'info' : $("#info").val()
           },
           dataType: "JSON",
           success: function (data) {
               if ("1" === data.code){
                   location.href = "user/index";
               }
           }
       });
   });
});