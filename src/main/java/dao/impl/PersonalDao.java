package dao.impl;

import dao.BaseDao;
import dao.IDao;
import entity.PersonalUser;
import entity.Resume;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Version 1.0
 * @Description 用户Dao
 * @Author 22413
 * @Aate 2021/11/28 15:07
 */
public class PersonalDao extends BaseDao<PersonalUser> implements IDao<PersonalUser> {

    private QueryRunner queryRunner = new QueryRunner();

    //根据用户名 密码查询账户
    public PersonalUser selectOne(String username,String password) throws SQLException {
        PersonalUser personalUser = this.getBean("select * from personalUser where username = ? and password =?",
                PersonalUser.class, username, password);
        return personalUser;
    }

    //注册 个人用户
    //PersonalUser中包括Username、Email、Password、Phone四个字段
    public int insert(PersonalUser personalUser) throws SQLException {
        int i = this.update("insert into personalUser values(null,?,?,?,?,null,null,null,null,null,null)",
                personalUser.getUsername(), personalUser.getEmail(), personalUser.getPassword(), personalUser.getPhone()
        );
        return i;
    }

    //根据名字查询 PersonalUser 对象
    @Override
    public PersonalUser selectOneByName(String name) throws SQLException {
        PersonalUser personalUser = this.getBean("select * from personalUser where username = ?",
                PersonalUser.class, name);
        return personalUser;
    }

    //第一次创建用户简历信息
    public int insertResume(int id, Resume resume) throws SQLException {
        int i = this.update("insert into resume values(?,null,null,null,null,null,null,null,null,null," +
                "null,null,null,null,null,null,null,null,null)",id);
        return i;
    }

    public Resume selectResume(int id) throws SQLException {
        Resume resume = queryRunner.query(JDBCUtils.getConn(), "select * from resume where id = ?", new BeanHandler<>(Resume.class), id);
        return resume;
    }
}
