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
    @Override
    public CompanyUser login(String username, String password) {
        return null;
    }

    @Override
    public boolean register(CompanyUser companyUser) {
        return false;
    }

    @Override
    public boolean validateName(String name) {
        return false;
    }
}
