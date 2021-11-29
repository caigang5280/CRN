package controller;

import com.alibaba.fastjson.JSONObject;
import entity.PersonalUser;
import entity.Resume;
import service.impl.PersonalService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PersonalServlet", urlPatterns = "/personal")
public class PersonalServlet extends BasicServlet {

    private PersonalService service = new PersonalService();

    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("loginUsername");
        System.out.println("username" + username);
        String password = request.getParameter("loginPassword");
        PersonalUser personalUser = service.login(username, password);

        if (personalUser != null) {
            System.out.println(personalUser);
            //将数据放入会话区
            HttpSession session = request.getSession();
            session.setAttribute("personalUser", personalUser);

            request.getRequestDispatcher(request.getContextPath() + "/personal/personalHome.jsp").forward(request, response);
        } else {
            request.setAttribute("username", username);
            request.setAttribute("flagLogin",false);
            /*request.setAttribute("msg","用户名或密码有误！");*/
            request.getRequestDispatcher(request.getContextPath() + "/personal/personalLoginRegister.jsp").forward(request, response);
        }
    }

    public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取用户名、密码、确认密码、邮箱、手机号
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String msg = "";
        //创建个人用户
        PersonalUser personalUser = new PersonalUser(username, email, password, phone);
        boolean flag = service.register(personalUser);
        System.out.println(personalUser);
        //查询创建的账户
        personalUser = service.login(personalUser.getUsername(), personalUser.getPassword());

        if (flag) {
            //创建个人用户对应的简历信息
            Resume resume = new Resume(username);
            boolean b = service.registerResume(personalUser.getId(), resume);
            if (b) {
                //跳转至登录界面，回显用户名
                request.setAttribute("username", username);
                request.getRequestDispatcher("personal/personalLoginRegister.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("msg", "注册失败");
            request.getRequestDispatcher("personal/personalLoginRegister.jsp").forward(request, response);
        }
    }

    //校验用户名是否存在
    public void validateName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("1111");
        String username = request.getParameter("username");
        System.out.println("username"+username);
        //判断用户名是否被占用
        boolean flag = service.validateName(username);
        System.out.println("flag"+flag);
        //true可用  false不可用
        String msg = "{\"flag\""+flag+"}";
        //响应将JSON数据传输至页面
        PrintWriter out = response.getWriter();
        out.println(msg);
        out.flush();
        out.close();
    }
}
