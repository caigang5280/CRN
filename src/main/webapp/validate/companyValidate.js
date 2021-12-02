/*
注册校验
*/
$("#companyRegister").validate({
    rules:{
        "username":{
            "required":true,
            "validateNameCompany":true
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
            "required":"公司名必填",
            "validateNameCompany":"公司名已存在"
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
$.validator.addMethod("validateNameCompany",function(value,element,params){
    var flag = true;
    $.ajax({
        async:false,  //发送同步请求，请将此选项设置为 false
        type:"post",
        url:"/company?method=validateName",
        data:{"username":value},
        dataType:"json",
        success:function(obj){
            //true可用  false不可用
            flag = obj.flag;
        },
        error:function () {
            console.log("error")
        }
    })
    //需要返回值 false----该校验器校验失败    true---校验通过
    return flag;
});


/*
登录校验
*/
$("#companyLogin").validate({
    rules:{
        "loginUsername":{
            "required":true
        },
        "loginPassword":{
            "required":true,
            "rangelength":[6,16]
        }
    },
    messages: {
        "loginUsername":{
            "required":"公司名必填"
        },
        "loginPassword": {
            "required":"密码必填",
            "rangelength": "密码长度为6~16位"
        }

    }
})

/*
个人账户校验修改密码
*/
$("#companyUpdatePassword").validate({
    rules:{
        "password":{
            "required":true,
            "rangelength":[6,16]
        },
        "repassword":{
            "required":true,
            "equalTo":"#inputEmail3"
        }
    },
    messages: {
        "password": {
            "required":"密码必填",
            "rangelength": "密码长度为6~16位"
        },
        "repassword": {
            "required":"确认密码必填",
            "equalTo": "两次密码输入必须一致"
        }
    }
})

/*
企业账户校验修改个人信息
*/
$("#companyUpdateInfo").validate({
    rules:{
        "username":{
            "required":true,
            "validateNameModifyCompany":true
        },
        "address":{
            "required":true
        },
        "eduction":{
            "required":true
        },
        "phone":{
            "required":true,
            "digits":true,
            "rangelength": [11,11]
        }
    },
    messages: {
        "username":{
            "required":"姓名必填",
            "validateNameModifyCompany":"公司名被占用"
        },
        "address":{
            "required":"地址必填"
        },
        "eduction":{
            "required":"学历必填"
        },
        "phone":{
            "required":"手机号必填",
            "digits": "必须由纯数字组成",
            "rangelength": "手机号由11位数字组成"
        }
    }
});

/*
修改个人信息效验用户名
 */
$.validator.addMethod("validateNameModifyCompany",function(value,element,params){
    console.log("log")
    var flag = true;
    $.ajax({
        async:false,  //发送同步请求，请将此选项设置为 false
        type:"post",
        url:"/company?method=validateName&code=updateInfo",
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
