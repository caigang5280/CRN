package dao;

import entity.RecruitInfo;

import java.sql.SQLException;
import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/12/1 23:00
 */
public class JobDao extends BaseDao<RecruitInfo> implements IJobDao{


    //计算招聘信息表总记录数
    public Long selectCounts(String queryJobTitle) throws SQLException {
        Long value = 0L;
        String sql = "select count(*) from recruitInfo where jobTitle like concat('%',?,'%')";
        value = (Long)this.getSingleValue(sql,queryJobTitle);
        return value;

    }

    //查询商品的列表
    @Override
    public List<RecruitInfo> selectAll(String queryJobTitle, String queryJobExperience, String queryEducation,
                                       String querySalary, String queryJobAddress, int begin) throws SQLException {
        List<RecruitInfo> list = null;
        String sql = "select * from recruitInfo where jobTitle like concat('%',?,'%') and jobExperience like concat('%',?,'%') and " +
                "education like concat('%',?,'%') and salary like concat('%',?,'%') and jobAddress like concat('%',?,'%') limit ?,10";
        list = this.getBeanList(sql, RecruitInfo.class, queryJobTitle, queryJobExperience, queryEducation, querySalary, queryJobAddress, begin);
        return list;
    }
}
