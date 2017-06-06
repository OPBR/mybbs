/**
 * Created by zy on 2017/5/12.
 */
$(function () {
    $('#returnLogin').trigger("click");
    var ue = UE.getEditor('editor');
    $('#subBtn').on('click', function () {
       $.ajax({
           url: 'content/release',
           type: 'POST',
           data: {
               'username' : $("#hidInput").val(),
               'title' : $("#title").val(),
               'info' : UE.getEditor('editor').getContent()
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