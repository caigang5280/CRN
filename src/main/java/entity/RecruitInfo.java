package entity;

/**
 * @Version 1.0
 * @Description 招聘信息  最终版11.26
 * @Author 22413
 * @Aate 2021/11/28 13:11
 */
public class RecruitInfo {
    //id 招聘信息序号 - 自增长 PRIMARY key
    int id;
    //企业名称
    String companyName;
    //工作类型
    String jobType;
    //职位名称
    String jobTitle;
    //工作经验
    String jobExperience;
    //学历要求
    String education;
    //企业logo图
    String companyLogo;
    //职位描述
    String jobDescription;
    //工作地址
    String jobAddress;
    //所属部门
    String department;
    //企业用户
    CompanyUser companyUser;

    public RecruitInfo() {
    }

    public RecruitInfo(int id, String companyName, String jobType, String jobTitle, String jobExperience, String education, String companyLogo, String jobDescription, String jobAddress, String department, CompanyUser companyUser) {
        this.id = id;
        this.companyName = companyName;
        this.jobType = jobType;
        this.jobTitle = jobTitle;
        this.jobExperience = jobExperience;
        this.education = education;
        this.companyLogo = companyLogo;
        this.jobDescription = jobDescription;
        this.jobAddress = jobAddress;
        this.department = department;
        this.companyUser = companyUser;
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
     * @return jobType
     */
    public String getJobType() {
        return jobType;
    }

    /**
     * 设置
     * @param jobType
     */
    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    /**
     * 获取
     * @return jobTitle
     */
    public String getJobTitle() {
        return jobTitle;
    }

    /**
     * 设置
     * @param jobTitle
     */
    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    /**
     * 获取
     * @return jobExperience
     */
    public String getJobExperience() {
        return jobExperience;
    }

    /**
     * 设置
     * @param jobExperience
     */
    public void setJobExperience(String jobExperience) {
        this.jobExperience = jobExperience;
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

    /**
     * 获取
     * @return jobDescription
     */
    public String getJobDescription() {
        return jobDescription;
    }

    /**
     * 设置
     * @param jobDescription
     */
    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    /**
     * 获取
     * @return jobAddress
     */
    public String getJobAddress() {
        return jobAddress;
    }

    /**
     * 设置
     * @param jobAddress
     */
    public void setJobAddress(String jobAddress) {
        this.jobAddress = jobAddress;
    }

    /**
     * 获取
     * @return department
     */
    public String getDepartment() {
        return department;
    }

    /**
     * 设置
     * @param department
     */
    public void setDepartment(String department) {
        this.department = department;
    }

    /**
     * 获取
     * @return companyUser
     */
    public CompanyUser getCompanyUser() {
        return companyUser;
    }

    /**
     * 设置
     * @param companyUser
     */
    public void setCompanyUser(CompanyUser companyUser) {
        this.companyUser = companyUser;
    }

    public String toString() {
        return "RecruitInfo{id = " + id + ", companyName = " + companyName + ", jobType = " + jobType + ", jobTitle = " + jobTitle + ", jobExperience = " + jobExperience + ", education = " + education + ", companyLogo = " + companyLogo + ", jobDescription = " + jobDescription + ", jobAddress = " + jobAddress + ", department = " + department + ", companyUser = " + companyUser + "}";
    }
}
