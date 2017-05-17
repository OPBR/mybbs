/**
 * Created by DELL on 2017/5/17.
 */
$(function () {
   $('#edit').on('click', function () {
       $('#editShow').show();
   });
   $('#save').on('click', function () {
       $.ajax({
           url: '/mybbs/comment/release',
           type: 'POST',
           data: {
               'username': $('#hidInputName').val(),
               'id': $('#hidInputId').val(),
               'info': $('#info').val()
           },
           dataType: 'JSON',
           success: function (data) {
               if ('1' == data.code){
                    $('#comment').html('<tr>'
                        + '<td>' + $('#hidInputName').val()
                        + '</td>'
                        + '<td>' + $('#info').val()
                        + '</td>'
                        + '<td>' + ""
                        + '</td>'
                        + '</tr>>')
               }
           }
       });
   })
});