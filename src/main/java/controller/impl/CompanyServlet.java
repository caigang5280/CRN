package controller.impl;

import controller.BasicServlet;
import controller.IServlet;
import entity.CompanyUser;
import entity.PersonalUser;
import entity.Resume;
import service.impl.CompanyService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

/**
 * @Version 1.0
 * @Description 企业用户
 * @Author 22413
 * @Aate 2021/11/30 18:50
 */
@WebServlet(name = "CompanyServlet", urlPatterns = "/company")
public class CompanyServlet extends BasicServlet implements IServlet {
    private CompanyService service = new CompanyService();

    //登录
    @Override
    public void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String username = request.getParameter("loginUsername");
        System.out.println("username" + username);
        String password = request.getParameter("loginPassword");
        CompanyUser companyUser = service.login(username, password);

        if (companyUser != null) {
            System.out.println(companyUser);
            //将数据放入会话区
            HttpSession session = request.getSession();
            session.setAttribute("companyUser", companyUser);

            request.getRequestDispatcher(request.getContextPath() + "/company/companyHome.jsp").forward(request, response);
        } else {
            request.setAttribute("username", username);
            request.setAttribute("flagLogin",false);
            /*request.setAttribute("msg","用户名或密码有误！");*/
            request.getRequestDispatcher(request.getContextPath() + "/company/companyLoginRegister.jsp").forward(request, response);
        }
    }
    //注册
    @Override
    public void register(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //获取公司名、密码、确认密码、邮箱、手机号
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        //创建个人用户
        CompanyUser companyUser = new CompanyUser(username, email, password, phone);
        //注册
        boolean flag = service.register(companyUser);
        System.out.println(companyUser);

        if (flag) {
            //跳转至登录界面，回显用户名
            request.setAttribute("username", username);
            request.getRequestDispatcher(request.getContextPath()+"/company/companyHome.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "注册失败");
            request.getRequestDispatcher(request.getContextPath() + "/company/companyLoginRegister.jsp").forward(request, response);
        }
    }

    //修改企业信息
    @Override
    public void updateInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //获取会话域中的personalUser
        HttpSession session = request.getSession();
        CompanyUser companyUser = (CompanyUser)session.getAttribute("companyUser");
        System.out.println("updateInfo");
        //获取值 赋值到personalUser对象中
        String username = request.getParameter("username");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        companyUser.setCompanyName(username);
        companyUser.setAddress(address);
        companyUser.setCompanyEmail(email);
        companyUser.setPhone(phone);

        request.getRequestDispatcher(request.getContextPath() + "/company/companyModifyInfo.jsp").forward(request, response);

    }
    //修改密码
    @Override
    public void updatePwd(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        CompanyUser companyUser = (CompanyUser)session.getAttribute("companyUser");
        String password = request.getParameter("password");
        System.out.println("password:"+password);
        boolean b = service.updatePwd(companyUser.getId(), password);
        System.out.println("b:"+b);
        if(b){
            request.getRequestDispatcher(request.getContextPath() + "/company/companyInfo.jsp").forward(request, response);
        }
    }
    //校验用户名是否存在
    @Override
    public void validateName(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String code = request.getParameter("code");
        String username = request.getParameter("username");
        //判断用户名是否被占用
        boolean flag = service.validateName(username);
        if(code==null || code.equals("")) {

        }else if(code.equals("updateInfo")){
            System.out.println(code+";;");
            //修改账户用户名 检验重复
            HttpSession session = request.getSession();
            CompanyUser companyUser = (CompanyUser)session.getAttribute("companyUser");

            if(companyUser.getCompanyName().equals(username)){
                flag = true;
            }
        }
        System.out.println("flag = " + flag);
        //true可用  false不可用
        String msg = "{\"flag\":" + flag + "}";
        //响应将JSON数据传输至页面
        PrintWriter out = response.getWriter();
        out.write(msg);
        out.flush();
        out.close();
    }
}
