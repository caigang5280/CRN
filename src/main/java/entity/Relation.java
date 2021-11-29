package entity;

/**
 * @Version 1.0
 * @Description 个人&企业关系表  投递-接收简历
 * @Author 22413
 * @Aate 2021/11/28 13:16
 */
public class Relation {
    //id 关系表序号-自动增长
    int id;
    //个人用户
    PersonalUser personalUser;
    //简历
    Resume resume;
    //企业用户id
    CompanyUser companyUser;
    //企业招聘信息
    RecruitInfo recruitInfo;
    //投递状态-是否投递 0代表否  1代表是
    int deliverState;
    //处理状态-是否处理 0代表-企业未读  1代表-企业已阅  2代表-企业已回复
    int handleState;


    public Relation() {
    }

    public Relation(int id, PersonalUser personalUser, Resume resume, CompanyUser companyUser, RecruitInfo recruitInfo, int deliverState, int handleState) {
        this.id = id;
        this.personalUser = personalUser;
        this.resume = resume;
        this.companyUser = companyUser;
        this.recruitInfo = recruitInfo;
        this.deliverState = deliverState;
        this.handleState = handleState;
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
     * @return personalUser
     */
    public PersonalUser getPersonalUser() {
        return personalUser;
    }

    /**
     * 设置
     * @param personalUser
     */
    public void setPersonalUser(PersonalUser personalUser) {
        this.personalUser = personalUser;
    }

    /**
     * 获取
     * @return resume
     */
    public Resume getResume() {
        return resume;
    }

    /**
     * 设置
     * @param resume
     */
    public void setResume(Resume resume) {
        this.resume = resume;
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

    /**
     * 获取
     * @return recruitInfo
     */
    public RecruitInfo getRecruitInfo() {
        return recruitInfo;
    }

    /**
     * 设置
     * @param recruitInfo
     */
    public void setRecruitInfo(RecruitInfo recruitInfo) {
        this.recruitInfo = recruitInfo;
    }

    /**
     * 获取
     * @return deliverState
     */
    public int getDeliverState() {
        return deliverState;
    }

    /**
     * 设置
     * @param deliverState
     */
    public void setDeliverState(int deliverState) {
        this.deliverState = deliverState;
    }

    /**
     * 获取
     * @return handleState
     */
    public int getHandleState() {
        return handleState;
    }

    /**
     * 设置
     * @param handleState
     */
    public void setHandleState(int handleState) {
        this.handleState = handleState;
    }

    public String toString() {
        return "Relation{id = " + id + ", personalUser = " + personalUser + ", resume = " + resume + ", companyUser = " + companyUser + ", recruitInfo = " + recruitInfo + ", deliverState = " + deliverState + ", handleState = " + handleState + "}";
    }
}
