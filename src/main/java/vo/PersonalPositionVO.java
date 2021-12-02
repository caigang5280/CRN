package vo;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/12/1 22:36
 */
public class PersonalPositionVO {
    //公司名
    String companyName;
    //工作类型
    String jobType;
    //职位名称
    String jobTitle;
    //工作经验
    String jobExperience;
    //学历要求
    String education;
    //职位薪资
    String salary;
    //企业logo图
    String companyLogo;
    //职位描述
    String jobDescription;
    //工作地址
    String jobAddress;
    //所属部门
    String department;

    public PersonalPositionVO(String companyName, String jobType, String jobTitle, String jobExperience, String education, String salary, String companyLogo, String jobDescription, String jobAddress, String department) {
        this.companyName = companyName;
        this.jobType = jobType;
        this.jobTitle = jobTitle;
        this.jobExperience = jobExperience;
        this.education = education;
        this.salary = salary;
        this.companyLogo = companyLogo;
        this.jobDescription = jobDescription;
        this.jobAddress = jobAddress;
        this.department = department;
    }
}
