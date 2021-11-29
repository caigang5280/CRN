/*
注册校验
*/
$("#personalRegister").validate({
    rules:{
        "username":{
            "required":true,
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
            "required":"用户名必填"
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
})


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