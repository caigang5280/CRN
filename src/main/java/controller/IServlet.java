package controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface IServlet {
    //登录
    public void login(HttpServletRequest request, HttpServletResponse response) throws Exception;

    //注册
    public void register(HttpServletRequest request, HttpServletResponse response) throws Exception;

    //修改个人信息
    public void updateInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;

    //修改密码
    public void updatePwd(HttpServletRequest request, HttpServletResponse response) throws Exception;

    //校验用户名是否存在
    public void validateName(HttpServletRequest request, HttpServletResponse response) throws Exception;

}
