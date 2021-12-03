package entity;

import java.util.Date;

/**
 * @Version 1.0
 * @Description 简历 最终版11.30
 * @Author 22413
 * @Aate 2021/11/28 12:47
 */
public class Resume {
    //简历序号 主键 自增长  id与个人用户id对应
    int id;
    //照片
    String photo;
    //姓名
    String name;
    //性别
    String sex;
    //邮箱
    String email;
    //手机号
    String phone;
    //生日
    Date birthday;
    //毕业院校
    String college;
    //专业
    String major;
    //学历-不限-博士-硕士 本科 专科
    String education;
    //毕业年份
    String graduationYear;
    //经验
    String experience;
    //个人优势
    String personalAdvantages;
    //期望职位
    String jobExpectation;
    //期望地点
    String locationExpectation;
    //期望工资（月薪）单位：k
    String salaryExpectation;
    //工作经历
    String workExperience;
    //项目经历
    String projectExperience;
    //简历状态  0代表未完成 1代表已完成
    int state;

    //在创建个人用户时 根据用户id创建
    public Resume(int id) {
        this.id = id;
    }


    public Resume() {
    }

    public Resume(int id, String photo, String name, String sex, String email, String phone, Date birthday, String college, String major, String education, String graduationYear, String experience, String personalAdvantages, String jobExpectation, String locationExpectation, String salaryExpectation, String workExperience, String projectExperience, int state) {
        this.id = id;
        this.photo = photo;
        this.name = name;
        this.sex = sex;
        this.email = email;
        this.phone = phone;
        this.birthday = birthday;
        this.college = college;
        this.major = major;
        this.education = education;
        this.graduationYear = graduationYear;
        this.experience = experience;
        this.personalAdvantages = personalAdvantages;
        this.jobExpectation = jobExpectation;
        this.locationExpectation = locationExpectation;
        this.salaryExpectation = salaryExpectation;
        this.workExperience = workExperience;
        this.projectExperience = projectExperience;
        this.state = state;
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
     * @return photo
     */
    public String getPhoto() {
        return photo;
    }

    /**
     * 设置
     * @param photo
     */
    public void setPhoto(String photo) {
        this.photo = photo;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置
     * @param sex
     */
    public void setSex(String sex) {
        this.sex = sex;
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
     * @return college
     */
    public String getCollege() {
        return college;
    }

    /**
     * 设置
     * @param college
     */
    public void setCollege(String college) {
        this.college = college;
    }

    /**
     * 获取
     * @return major
     */
    public String getMajor() {
        return major;
    }

    /**
     * 设置
     * @param major
     */
    public void setMajor(String major) {
        this.major = major;
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
     * @return graduationYear
     */
    public String getGraduationYear() {
        return graduationYear;
    }

    /**
     * 设置
     * @param graduationYear
     */
    public void setGraduationYear(String graduationYear) {
        this.graduationYear = graduationYear;
    }

    /**
     * 获取
     * @return experience
     */
    public String getExperience() {
        return experience;
    }

    /**
     * 设置
     * @param experience
     */
    public void setExperience(String experience) {
        this.experience = experience;
    }

    /**
     * 获取
     * @return personalAdvantages
     */
    public String getPersonalAdvantages() {
        return personalAdvantages;
    }

    /**
     * 设置
     * @param personalAdvantages
     */
    public void setPersonalAdvantages(String personalAdvantages) {
        this.personalAdvantages = personalAdvantages;
    }

    /**
     * 获取
     * @return jobExpectation
     */
    public String getJobExpectation() {
        return jobExpectation;
    }

    /**
     * 设置
     * @param jobExpectation
     */
    public void setJobExpectation(String jobExpectation) {
        this.jobExpectation = jobExpectation;
    }

    /**
     * 获取
     * @return locationExpectation
     */
    public String getLocationExpectation() {
        return locationExpectation;
    }

    /**
     * 设置
     * @param locationExpectation
     */
    public void setLocationExpectation(String locationExpectation) {
        this.locationExpectation = locationExpectation;
    }

    /**
     * 获取
     * @return salaryExpectation
     */
    public String getSalaryExpectation() {
        return salaryExpectation;
    }

    /**
     * 设置
     * @param salaryExpectation
     */
    public void setSalaryExpectation(String salaryExpectation) {
        this.salaryExpectation = salaryExpectation;
    }

    /**
     * 获取
     * @return workExperience
     */
    public String getWorkExperience() {
        return workExperience;
    }

    /**
     * 设置
     * @param workExperience
     */
    public void setWorkExperience(String workExperience) {
        this.workExperience = workExperience;
    }

    /**
     * 获取
     * @return projectExperience
     */
    public String getProjectExperience() {
        return projectExperience;
    }

    /**
     * 设置
     * @param projectExperience
     */
    public void setProjectExperience(String projectExperience) {
        this.projectExperience = projectExperience;
    }

    /**
     * 获取
     * @return state
     */
    public int getState() {
        return state;
    }

    /**
     * 设置
     * @param state
     */
    public void setState(int state) {
        this.state = state;
    }

    public String toString() {
        return "Resume{id = " + id + ", photo = " + photo + ", name = " + name + ", sex = " + sex + ", email = " + email + ", phone = " + phone + ", birthday = " + birthday + ", college = " + college + ", major = " + major + ", education = " + education + ", graduationYear = " + graduationYear + ", experience = " + experience + ", personalAdvantages = " + personalAdvantages + ", jobExpectation = " + jobExpectation + ", locationExpectation = " + locationExpectation + ", salaryExpectation = " + salaryExpectation + ", workExperience = " + workExperience + ", projectExperience = " + projectExperience + ", state = " + state + "}";
    }
}
