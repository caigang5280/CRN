package dao;

import entity.PersonalUser;

import java.sql.SQLException;

public interface IDao<T> {

    //根据用户名 密码查询账户
    public T selectOne(String name, String password) throws SQLException;

    //注册
    public int insert(T t) throws SQLException;

    //根据名字查询T对象
    public T selectOneByName(String name) throws SQLException;
}
