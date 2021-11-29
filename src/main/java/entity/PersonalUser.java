package entity;

import java.util.Date;

/**
 * @Version 1.0
 * @Description 个人用户表 最终版11.28
 * @Author 22413
 * @Aate 2021/11/28 12:41
 */
public class PersonalUser {
    //用户序号 主键 自增长
    int id;
    //用户名，唯一约束，必填
    String username;
    //邮箱
    String email;
    //密码
    String password;
    //手机号
    String phone;
    //性别
    String gender;
    //生日
    Date birthday;
    //地址
    String address;
    //学历
    String education;
    //个人简介
    String personInfo;

    //简历
    //在用户创建账号时会自动创建简历 简历的状态初始为null-代表未完成简历
    //简历赋值后 值不为null-代表未完成简历
    int resume;

    public PersonalUser(String username, String email, String password, String phone) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }

    public PersonalUser(int id, String username, String email, String password, String phone, String gender, Date birthday, String address, String education, String personInfo, int resume) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.gender = gender;
        this.birthday = birthday;
        this.address = address;
        this.education = education;
        this.personInfo = personInfo;
        this.resume = resume;
    }


    public PersonalUser() {
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
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
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
     * @return gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * 设置
     * @param gender
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * 获取
     * @return birthday
     */
    public Date getBirthday() {
        return birthday;
    }

    /**
     * 设置
     * @param birthday
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
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
     * @return education
     */
    public String getEducation() {
        return education;
    }

    /**
     * 设置
     * @param education
     */
    public void setEducation(String education) {
        this.education = education;
    }

    /**
     * 获取
     * @return personInfo
     */
    public String getPersonInfo() {
        return personInfo;
    }

    /**
     * 设置
     * @param personInfo
     */
    public void setPersonInfo(String personInfo) {
        this.personInfo = personInfo;
    }

    /**
     * 获取
     * @return resume
     */
    public int getResume() {
        return resume;
    }

    /**
     * 设置
     * @param resume
     */
    public void setResume(int resume) {
        this.resume = resume;
    }

    public String toString() {
        return "PersonalUser{id = " + id + ", username = " + username + ", email = " + email + ", password = " + password + ", phone = " + phone + ", gender = " + gender + ", birthday = " + birthday + ", address = " + address + ", education = " + education + ", personInfo = " + personInfo + ", resume = " + resume + "}";
    }
}
