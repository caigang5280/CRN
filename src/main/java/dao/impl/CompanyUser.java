package dao.impl;

import dao.BaseDao;
import dao.IDao;
import entity.PersonalUser;

import java.sql.SQLException;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/11/29 11:14
 */
public class CompanyUser extends BaseDao<CompanyUser> implements IDao<CompanyUser> {

    //根据用户名 密码查询账户
    @Override
    public PersonalUser selectOne(String name, String password) throws SQLException {
        return null;
    }

    //注册 企业用户
    //CompanyUser中包括companyName、Email、Password、Phone四个字段
    @Override
    public int insert(CompanyUser companyUser) throws SQLException {
        return 0;
    }

    @Override
    public CompanyUser selectOneByName(String name) throws SQLException {
        return null;
    }
}
