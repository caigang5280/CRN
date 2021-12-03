package service.impl;

import dao.impl.CompanyDao;
import entity.CompanyUser;
import entity.PersonalUser;
import entity.RecruitInfo;
import service.IService;
import utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Version 1.0
 * @Description 企业用户Service
 * @Author 22413
 * @Aate 2021/11/29 19:39
 */
public class CompanyService implements IService<CompanyUser> {
    private CompanyDao dao = new CompanyDao();

    //根据公司名，密码登录
    @Override
    public CompanyUser login(String username, String password) {
        try {
            return dao.selectOne(username, password);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return null;
    }

    //检测公司名是否存在
    @Override
    public boolean validateName(String name) {
        CompanyUser companyUser = null;
        try {
            companyUser = dao.selectOneByName(name);
            if(companyUser == null){
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return false;
    }

    //注册
    @Override
    public boolean register(CompanyUser companyUser) {
        try {
            int i = dao.insert(companyUser);
            return i>0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return false;
    }



    //通过id修改密码
    @Override
    public boolean updatePwd(int id, String password) {
        int i = 0;
        try {
            i = dao.update("update companyUser set password=? where id=?", password, id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return i>0;
    }


    @Override
    public boolean modifyInfo(CompanyUser companyUser) {
        int i = 0;
        try {
            i = dao.update("update companyUser set companyName=?,address=?,companyEmail=?,phone=? where id=?",
                    companyUser.getCompanyName(), companyUser.getAddress(), companyUser.getCompanyEmail(), companyUser.getPhone(), companyUser.getId());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return i>0;
    }

    //发布招聘信息
    public boolean postInformation(RecruitInfo recruitInfo){
        int i = 0;
        try {
            i = dao.insertRecruit(recruitInfo);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close();
        }
        return i>0;
    }


}
