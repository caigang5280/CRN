package service;

import dao.JobDao;
import entity.RecruitInfo;
import utils.JDBCUtils;
import vo.PageVO;

import java.sql.SQLException;
import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/12/1 22:36
 */
public class JobService {

    private JobDao dao = new JobDao();

    public List<RecruitInfo> selectAll() {
        List<RecruitInfo> list = null;
        try {
            list = dao.getBeanList("select * from recruitInfo", RecruitInfo.class);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return list;
    }



    /**
     *   分页+搜索+职位列表展示
     * @param queryJobTitle     工作职位
     * @param queryJobExperience  工作经验
     * @param queryEducation    学历
     * @param querySalary       薪资
     * @param queryJobAddress   地址
     * @param pageNow           当前页
     * @return
     */
    public PageVO<RecruitInfo> findAllRecruitInfos(String queryJobTitle, String queryJobExperience,
           String queryEducation, String querySalary, String queryJobAddress, int pageNow){
        PageVO<RecruitInfo> vo = null;
        try {
            //查询职位的总记录数
            int muCounts = dao.selectCounts(queryJobTitle).intValue();
            //计算总页数
            int myPages = (int)(muCounts%12==0?muCounts/12:Math.ceil(muCounts/12.0));
            //计算起始值
            int begin = (pageNow - 1)*10;
            //职位列表
            List<RecruitInfo> list = dao.selectAll(queryJobTitle, queryJobExperience, queryEducation, querySalary, queryJobAddress, begin);
            //封装vo
            vo = new PageVO<>(pageNow,myPages,muCounts,queryJobTitle,queryJobExperience,queryEducation,querySalary,queryJobAddress,list);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return vo;


    }


}
