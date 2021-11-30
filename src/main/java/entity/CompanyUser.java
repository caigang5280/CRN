package entity;

import java.util.Date;

/**
 * @Version 1.0
 * @Description 企业用户表  最终版（11.30）
 * @Author 22413
 * @Aate 2021/11/28 12:58
 */
public class CompanyUser {
    //公司序号 主键 自增长
    int id;
    //公司名，唯一约束，必填
    String companyName;
    //邮箱
    String companyEmail;
    //注册资金 单位：万
    int registeredFunds;
	//注册日期
    Date registerDate;
    //密码
    String password;
    //手机号
    String phone;
    //地址
    String address;
	//经营规模
    String businessScale;
	//企业logo
    String companyLogo;


    public CompanyUser() {
    }

    public CompanyUser(int id, String companyName, String companyEmail, int registeredFunds, Date registerDate, String password, String phone, String address, String businessScale, String companyLogo) {
        this.id = id;
        this.companyName = companyName;
        this.companyEmail = companyEmail;
        this.registeredFunds = registeredFunds;
        this.registerDate = registerDate;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.businessScale = businessScale;
        this.companyLogo = companyLogo;
    }

    /**
     * 获取
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * 获取
     * @return companyName
     */
    public String getCompanyName() {
        return companyName;
    }

    /**
     * 设置
     * @param companyName
     */
    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    /**
     * 获取
     * @return companyEmail
     */
    public String getCompanyEmail() {
        return companyEmail;
    }

    /**
     * 设置
     * @param companyEmail
     */
    public void setCompanyEmail(String companyEmail) {
        this.companyEmail = companyEmail;
    }

    /**
     * 获取
     * @return registeredFunds
     */
    public int getRegisteredFunds() {
        return registeredFunds;
    }

    /**
     * 设置
     * @param registeredFunds
     */
    public void setRegisteredFunds(int registeredFunds) {
        this.registeredFunds = registeredFunds;
    }

    /**
     * 获取
     * @return registerDate
     */
    public Date getRegisterDate() {
        return registerDate;
    }

    /**
     * 设置
     * @param registerDate
     */
    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    /**
     * 获取
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取
     * @return businessScale
     */
    public String getBusinessScale() {
        return businessScale;
    }

    /**
     * 设置
     * @param businessScale
     */
    public void setBusinessScale(String businessScale) {
        this.businessScale = businessScale;
    }

    /**
     * 获取
     * @return companyLogo
     */
    public String getCompanyLogo() {
        return companyLogo;
    }

    /**
     * 设置
     * @param companyLogo
     */
    public void setCompanyLogo(String companyLogo) {
        this.companyLogo = companyLogo;
    }

    public String toString() {
        return "CompanyUser{id = " + id + ", companyName = " + companyName + ", companyEmail = " + companyEmail + ", registeredFunds = " + registeredFunds + ", registerDate = " + registerDate + ", password = " + password + ", phone = " + phone + ", address = " + address + ", businessScale = " + businessScale + ", companyLogo = " + companyLogo + "}";
    }
}
