/**
 * Created by zy on 2017/5/18.
 */
$(function () {
    $('#returnLogin').click();
    var ue = UE.getEditor('editor');
    ue.addListener("ready", function () {
        ue.setContent($('#hidInfo').val(), false);
    });
    $('#subBtn').on('click', function () {
        $.ajax({
            url: '/mybbs/content/updateSubmit',
            type: 'POST',
            data: {
                'id': $('#hidContentId').val(),
                'info': ue.getContent(),
                'title': $('#title').val()
            },
            dataType: "JSON",
            success: function (data) {
                if ("1" === data.code){
                    location.href = "/mybbs/user/index";
                }
            }
        });
    });
});