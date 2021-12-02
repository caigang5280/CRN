package service;

import dao.JobDao;
import entity.RecruitInfo;
import utils.JDBCUtils;

import java.sql.SQLException;
import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/12/1 22:36
 */
public class JobService {

    private JobDao jobDao = new JobDao();

    public List<RecruitInfo> selectAll() {
        List<RecruitInfo> list = null;
        try {
            list = jobDao.getBeanList("select * from recruitInfo", RecruitInfo.class);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return list;
    }
}
