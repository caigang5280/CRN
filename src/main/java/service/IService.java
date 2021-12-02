package service;

import entity.PersonalUser;
import entity.Resume;

public interface IService<T> {

    //根据账号，密码登录
    T login(String username, String password);

    //注册
    public boolean register(T t);

    //校验昵称是否存在
    public boolean validateName(String name);

    //通过id修改密码
    public boolean updatePwd(int id, String password);

    //通过id修改信息
    public boolean modifyInfo(T t);



}
