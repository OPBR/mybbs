/**
 * Created by DELL on 2017/3/14.
 */
$(function () {
    // 需要做一个针对于mid或者是password输入的字段丢失焦点的事件处理
    $("#mid").on("blur",function () {
        validateMid()
    });
    $("#password").on("blur",function () {
        validatePassword();
    });
    //对于整个表单需要进行提交前的检查操作
    $("#loginFrom").on("submit",function () {
        return validateMid() && validatePassword(); //验证都通过后可以提交
    });
});
function validateMid() {
    return validateEmpty("mid");
}
function validatePassword() {
    return validateEmpty("password")
}
/**
 * 本函数的主要功能是验证传入的数据是否为空，如果为空，则显示错误，同时显示错误信息
 * 如果输入的内容为空，那么对话整个层要求进行错误提示：has-error,通过has-success
 * 在xxxSpan中显示为空的错误信息
 * @param eleId 要判断的元素ID编号
 */
function validateEmpty(eleId) {
    if ($("#" + eleId).val() == ""){    //如果输入的内容为空
        $("#" + eleId + "Div").attr("class","form-group has-error");
        $("#" + eleId + "Span").html('<label class="control-label" for="mid">必填</label>');
        return false;
    } else {    //内容不为空
        $("#" + eleId + "Div").attr("class","form-group has-success");
        $("#" + eleId + "Span").html('<label class="control-label glyphicon glyphicon-ok" for="mid"></label>');
        return true;
    }
}