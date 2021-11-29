package service;

import dao.impl.PersonalDao;
import entity.PersonalUser;
import entity.Resume;
import utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/11/28 17:15
 */
public class PersonalService {

    PersonalDao dao = new PersonalDao();

    //根据账号，密码登录
    public PersonalUser login(String username, String password){
        try {
            return dao.selectOne(username, password);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return null;
    }

    public boolean validateName(String username) {
        PersonalUser personalUser = null;
        try {
            personalUser = dao.selectOneByName(username);
            if(personalUser == null){
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
    public boolean register(PersonalUser personalUser) {
        try {
            int i = dao.insert(personalUser);
            return i>0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return false;
    }

    //根据用户id创建用户简历
    public boolean registerResume(int id,Resume resume) {
        try {
            int i = dao.insertResume(id,resume);
            return i>0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return false;
    }
}
