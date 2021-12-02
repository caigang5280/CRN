package controller;

import entity.RecruitInfo;
import service.JobService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
public class JobServlet {
    private JobService jobService = new JobService();

    //刷新职位界面
    public void flushPositionPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        List<RecruitInfo> recruitInfos = jobService.selectAll();

    }

}
