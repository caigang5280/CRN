package controller.impl;

import com.alibaba.fastjson.JSONObject;
import controller.BasicServlet;
import controller.IServlet;
import entity.PersonalUser;
import entity.Resume;
import service.impl.PersonalService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@MultipartConfig
@WebServlet(name = "PersonalServlet", urlPatterns = "/personal")
public class PersonalServlet extends BasicServlet implements IServlet {

    private PersonalService service = new PersonalService();

    //登录
    @Override
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

            //查找用户简历 放置会话域中
            Resume resume = service.selectResume(personalUser.getId());
            session.setAttribute("resume", resume);

            request.getRequestDispatcher(request.getContextPath() + "/personal/personalHome.jsp").forward(request, response);
        } else {
            request.setAttribute("username", username);
            request.setAttribute("flagLogin", false);
            /*request.setAttribute("msg","用户名或密码有误！");*/
            request.getRequestDispatcher(request.getContextPath() + "/personal/personalLoginRegister.jsp").forward(request, response);
        }
    }

    //注册
    @Override
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
            Resume resume = new Resume(personalUser.getId());
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
    @Override
    public void validateName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        String username = request.getParameter("username");
        //判断用户名是否被占用
        boolean flag = service.validateName(username);
        if (code == null || code.equals("")) {

        } else if (code.equals("updateInfo")) {
            System.out.println(code + ";;");
            //修改账户用户名 检验重复
            HttpSession session = request.getSession();
            PersonalUser personalUser = (PersonalUser) session.getAttribute("personalUser");

            if (personalUser.getUsername().equals(username)) {
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


    //修改个人信息
    @Override
    public void updateInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取会话域中的personalUser
        HttpSession session = request.getSession();
        PersonalUser personalUser = (PersonalUser) session.getAttribute("personalUser");
        System.out.println("updateInfo");
        //获取值 赋值到personalUser对象中
        String username = request.getParameter("username");
        String address = request.getParameter("address");
        String education = request.getParameter("education");
        String phone = request.getParameter("phone");
        personalUser.setUsername(username);
        personalUser.setAddress(address);
        personalUser.setEducation(education);
        personalUser.setPhone(phone);
        boolean b = service.modifyInfo(personalUser);
        if (b) {
            request.getRequestDispatcher("personal/personalModifyInfo.jsp").forward(request, response);
        }
    }

    //修改密码
    @Override
    public void updatePwd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        PersonalUser personalUser = (PersonalUser) session.getAttribute("personalUser");
        String password = request.getParameter("password");
        System.out.println("password:" + password);
        boolean b = service.updatePwd(personalUser.getId(), password);
        System.out.println("b:" + b);
        if (b) {
            request.getRequestDispatcher("personal/personalModifyPwd.jsp").forward(request, response);
        }

    }


    //修改简历
    public void modifyResume(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        PersonalUser personalUser = (PersonalUser) session.getAttribute("personalUser");

        //获取表单请求参数
        int id = personalUser.getId();
        String photo = request.getParameter("photo");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String birthdayStr = request.getParameter("birthday");
        String college = request.getParameter("college");
        String major = request.getParameter("major");
        String education = request.getParameter("education");
        String graduationYear = request.getParameter("graduationYear");
        String personalAdvantage = request.getParameter("personalAdvantage");
        String jobExpectation = request.getParameter("jobExpectation");
        String locationExpectation = request.getParameter("locationExpectation");
        String salaryExpectation = request.getParameter("salaryExpectation");
        String workExperience = request.getParameter("workExperience");
        String projectExperience = request.getParameter("projectExperience");

        String experience = request.getParameter("experience");


        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date birthday = null;
        try {
            birthday = sdf.parse(birthdayStr);

        } catch (ParseException e) {
            e.printStackTrace();
        }

        //执行修改的业务逻辑
        Resume resume = new Resume(
                id, photo, name, sex, email, phone, birthday, college, major, education,
                graduationYear, experience, personalAdvantage, jobExpectation, locationExpectation,
                salaryExpectation, workExperience, projectExperience, 1
        );

        //再手机上传信息 此处应该与input type="file" 的属性值
        //获取表单中上传的文件信息
        Part part = request.getPart("file");

        if (part != null) {
            //制作一个新名字
            String oldName = part.getHeader("content-disposition");
            //实际上传了图片
            if (oldName != null && oldName.lastIndexOf(".") > 0) {
                String newName = UUID.randomUUID() + oldName.substring(oldName.lastIndexOf("."), oldName.length() - 1);
                //给用户设置头像信息
                System.out.println("photo - " + "图片已上传");
                resume.setPhoto("/pic/" + newName);
                //写出上传图片至服务器路径
                part.write("F:\\jkyTest\\project\\pic\\" + newName);
            }

            boolean flag = service.modifyResume(resume);
            //根据修改结果进行页面跳转
            if (flag) {
                //将数据放入会话区
                session.setAttribute("resume", resume);
                request.getRequestDispatcher("personal/personalUpdateInfo.jsp").forward(request, response);
            }
        }
    }

}
