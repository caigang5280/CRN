package service.impl;

import dao.impl.PersonalDao;
import entity.PersonalUser;
import entity.Resume;
import service.IService;
import utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Version 1.0
 * @Description 个人用户Service
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
    public boolean validateName(String name) {
        PersonalUser personalUser = null;
        try {
            personalUser = dao.selectOneByName(name);
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
            i = dao.update("update personalUser set password=? where id=?", password, id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return i>0;
    }

    //通过id修改信息
    public boolean modifyInfo(PersonalUser personalUser){
        int i = 0;
        try {
            i = dao.update("update personalUser set username=?,address=?,education=?,phone=? where id=?",
                    personalUser.getUsername(), personalUser.getAddress(), personalUser.getEducation(), personalUser.getPhone(), personalUser.getId());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return i>0;
    }

    //通过id修改简历信息
    public boolean modifyResume(Resume resume) {
        int i = 0;
        try
        {
            i = dao.update("update resume set photo=?,name=?,sex=?,email=?,phone=?," +
                            "birthday=?,college=?,major=?,education=?," +
                            "graduationYear=?,personalAdvantages=?,jobExpectation=?," +
                            "locationExpectation=?,salaryExpectation=?,workExperience=?," +
                            "projectExperience=?,state=? where id=?",
                    resume.getPhoto(),resume.getName(),resume.getSex(), resume.getEmail(),resume.getPhone(),
                    resume.getBirthday(),resume.getCollege(),resume.getMajor(),resume.getEducation(),
                    resume.getGraduationYear(),resume.getPersonalAdvantages(),resume.getJobExpectation(),
                    resume.getLocationExpectation(),resume.getSalaryExpectation(),resume.getWorkExperience(),
                    resume.getProjectExperience(),1,resume.getId());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return i>0;
    }

    public Resume selectResume(int id) {
        Resume resume = null;
        try {
            resume = dao.selectResume(id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return resume;
    }
}
