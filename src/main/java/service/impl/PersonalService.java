package service.impl;

import dao.impl.PersonalDao;
import entity.PersonalUser;
import entity.Resume;
import service.IService;
import utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/11/28 17:15
 */
public class PersonalService implements IService<PersonalUser> {

    PersonalDao dao = new PersonalDao();

    //根据账号，密码登录
    @Override
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

    //检查名字是否存在
    @Override
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
    @Override
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

    //通过id修改密码
    public boolean updatePwd(int id, String password) {
        int i = 0;
        try {
            i = dao.update("update personalUser set password=? where id=?", id, password);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return i>0;
    }
}
