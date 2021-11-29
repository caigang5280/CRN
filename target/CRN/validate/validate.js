/*
注册校验
*/
$("#personalRegister").validate({
    rules:{
        "username":{
            "required":true,
            "validateName":true
        },
        "password":{
            "required":true,
            "rangelength":[6,16]
        },
        "repassword":{
            "required":true,
            "equalTo":"#registerPassword"
        },
        "email":{
            "required":true,
            "email":true
        },
        "phone":{
            "required":true,
            "digits":true,
            "rangelength": [11,11]
        }
    },

    messages: {
        "username":{
            "required":"用户名必填",
            "validateName":"昵称已存在"
        },
        "password": {
            "required":"密码必填",
            "rangelength": "密码长度为6~16位"
        },
        "repassword": {
            "required":"确认密码必填",
            "equalTo": "两次密码输入必须一致"
        },
        "email": {
            "required":"邮箱必填",
            "email": "邮箱格式必须正确"
        },
        "phone": {
            "required":"手机号必填",
            "digits": "必须由纯数字组成",
            "rangelength": "手机号由11位数字组成"
        }
    }
});

//自定义一个校验规则，校验昵称是否存在  validateName
//$.validator.addMethod("校验规则名称",function(value,element,params){});
// value是校验组件的value值
// element是校验组件的节点对象
// params是校验规则的参数
$.validator.addMethod("validateName",function(value,element,params){
    console.log("log")
    var flag = true;
    $.ajax({
        async:false,  //发送同步请求，请将此选项设置为 false
        type:"post",
        url:"/personal?method=validateName",
        data:{"username":value},
        dataType:"json",
        success:function(obj){
            //true可用  false不可用
            flag = obj.flag;
            console.log(flag)
        }
    })
    //需要返回值 false----该校验器校验失败    true---校验通过
    return flag;
});


/*
登录校验
*/
$("#personalLogin").validate({
    rules:{
        "loginUsername":{
            "required":true
        },
        "loginPassword":{
            "required":true
        }
    },
    messages: {
        "loginUsername":{
            "required":"用户名必填"
        },
        "loginPassword": {
            "required":"密码必填"
        }

    }
})