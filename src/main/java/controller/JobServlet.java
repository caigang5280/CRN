package controller;

import entity.RecruitInfo;
import service.JobService;
import vo.PageVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.http.HTTPException;
import java.io.IOException;
import java.util.List;

/**
 * @Version 1.0
 * @Description 职位信息
 * @Author 22413
 * @Aate 2021/12/1 22:25
 */
@MultipartConfig
@WebServlet(name = "JobServlet", urlPatterns = "/job")
public class JobServlet extends BasicServlet {

    private JobService jobService = new JobService();

    //刷新职位界面
    public void findAllPositions(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        //当前页码
        String page = request.getParameter("pageNow");
        //主页及职位中两个搜索框 -- 职位
        String queryJobTitle = request.getParameter("queryJobTitle");
        //工作经验
        String queryJobExperience = request.getParameter("queryJobExperience");
        //学历
        String queryEducation = request.getParameter("queryEducation");
        //工作薪资
        String querySalary = request.getParameter("querySalary");
        //工作地址
        String queryJobAddress = request.getParameter("queryJobAddress");

        //编辑查询
        if(queryJobTitle==null){
            queryJobTitle = ""; //默认查询所有
        }
        if(queryJobExperience==null){
            queryJobExperience = ""; //默认查询所有
        }
        if(queryEducation==null){
            queryEducation = ""; //默认查询所有
        }
        if(querySalary==null){
            querySalary = ""; //默认查询所有
        }
        if(queryJobAddress==null){
            queryJobAddress = ""; //默认查询所有
        }

        //page  分页查询
        int pageNow = 0;
        if(page==null){
            pageNow = 1;  //默认查询第一页
        }else{
            pageNow = Integer.parseInt(page);
        }

        PageVO<RecruitInfo> vo = jobService.findAllRecruitInfos(queryJobTitle,queryJobExperience,queryEducation,querySalary,queryJobAddress,pageNow);
        request.setAttribute("vo",vo);
        System.out.println(vo);

        request.getRequestDispatcher(request.getContextPath()+"/personal/personalPosition.jsp").forward(request,response);

    }

}
