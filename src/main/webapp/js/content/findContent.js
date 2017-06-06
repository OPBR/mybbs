/**
 * Created by zy on 2017/5/17.
 */
$(function () {
   $('#edit').on('click', function () {
       $('#editShow').show();
   });
   $('#save').on('click', function () {
       var myDate = new Date();
       $.ajax({
           url: '/mybbs/comment/release',
           type: 'POST',
           data: {
               'username': $('#hidInputName').val(),
               'id': $('#hidInputId').val(),
               'info': $('#info').val(),
               'current': myDate.toLocaleString()
           },
           dataType: 'JSON',
           success: function (data) {
               if ('1' == data.code){
                   $('#comment').after('<tbody><tr>'
                        + '<td>' + $('#hidInputName').val()
                        + '</td>'
                        + '<td>' + $('#info').val()
                        + '</td>'
                        + '<td>' + myDate.toLocaleString()
                        + '</td>'
                        + '</tr></tbody>')
               }
           }
       });
   })
});