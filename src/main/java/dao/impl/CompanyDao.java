package dao.impl;

import dao.BaseDao;
import dao.IDao;
import entity.CompanyUser;
import entity.PersonalUser;
import entity.RecruitInfo;

import java.sql.SQLException;

/**
 * @Version 1.0
 * @Description
 * @Author 22413
 * @Aate 2021/11/29 11:14
 */
public class CompanyDao extends BaseDao<CompanyUser> implements IDao<CompanyUser> {


    //根据用户名、密码查询企业用户
    @Override
    public CompanyUser selectOne(String name, String password) throws SQLException {
        CompanyUser companyUser = this.getBean("select * from companyUser where companyName = ? and password =?",
                CompanyUser.class, name, password);
        return companyUser;
    }

    //注册 企业用户
    //CompanyUser中包括companyName、Email、Password、Phone四个字段
    @Override
    public int insert(CompanyUser companyUser) throws SQLException {
        int i = this.update("insert into companyUser values(null,?,?,null,null,?,?,null,null,null)",
                companyUser.getCompanyName(), companyUser.getCompanyEmail(), companyUser.getPassword(), companyUser.getPhone());
        return i;
    }

    //根据名字查询 CompanyUser 对象
    @Override
    public CompanyUser selectOneByName(String name) throws SQLException {
        CompanyUser companyUser = this.getBean("select * from companyUser where companyName = ?",
                CompanyUser.class, name);
        return companyUser;
    }
    //发布招聘信息
    public int insertRecruit(RecruitInfo recruitInfo) throws SQLException {
        int i = this.update("insert into recruitinfo values(null,?,?,?,?,?,?,?,?,?,?,?,?)",
                recruitInfo.getCompanyName(),recruitInfo.getJobType(),recruitInfo.getJobTitle(),
                recruitInfo.getJobExperience(),recruitInfo.getEducation(),
                recruitInfo.getSalary(),recruitInfo.getCompanyLogo(),
                recruitInfo.getJobDescription(),recruitInfo.getJobAddress(),
                recruitInfo.getDepartment(),recruitInfo.getCompanyUserId(),0);
        return i;
    }



}
