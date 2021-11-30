package service.impl;

import entity.CompanyUser;
import service.IService;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/11/29 19:39
 */
public class CompanyService implements IService<CompanyUser> {
    //根据公司名，密码登录
    @Override
    public CompanyUser login(String username, String password) {
        return null;
    }

    //注册
    @Override
    public boolean register(CompanyUser companyUser) {
        return false;
    }

    //检测公司名是否存在
    @Override
    public boolean validateName(String name) {
        return false;
    }

    //通过id修改密码
    @Override
    public boolean updatePwd(int id, String password) {
        return false;
    }
}
