package dao;

import entity.RecruitInfo;

import java.sql.SQLException;
import java.util.List;

public interface IJobDao {

    //查询职位的总记录数
    public Long selectCounts(String queryJobTitle) throws SQLException;

    //查询职位的列表
    List<RecruitInfo> selectAll(String queryJobTitle, String queryJobExperience, String queryEducation, String querySalary, String queryJobAddress, int begin) throws SQLException;

}
