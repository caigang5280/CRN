function personalLogin() {
    var data = $("login-form").serialize();
    $.ajax({
        type:"post",
        url:"/personal?code=login",
        data:data,
        success:function () {

        }
    })
}
function validateName(){
    $.ajax({
        type:"post",
        url:"/personal?code=validate",
        data:{"username":$("#username").val()},
        dataType:"json",
        success:function(obj){
            var jsonObj = JSON.parse(obj);
            if(jsonObj.flag=="true"){
                $("#registerNameMsg").html("<font style='color: green'>"+jsonObj.msg+"</font>")
            }else{
                $("#registerNameMsg").html("<font style='color: red'>"+jsonObj.msg+"</font>")
            }
        }
    })
}