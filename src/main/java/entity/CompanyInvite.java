package entity;

import java.util.Date;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/11/30 19:34
 */
public class CompanyInvite {
    //id 关系表序号-自动增长
    int id;
    //投递简历日期
    Date time;
    //个人用户id & 简历id
    int personalUserId;

    //企业用户id
    int companyUserId;

    //企业招聘信息
    int recruitInfoId;

    //邀请状态-是否邀请 0代表否  1代表是
    int inviteState;

    //处理状态-是否处理 0代表-个人用户未读  1代表-个人用户已读  2代表-企业已回复
    int handleState;


    public CompanyInvite() {
    }

    public CompanyInvite(int id, Date time, int personalUserId, int companyUserId, int recruitInfoId, int inviteState, int handleState) {
        this.id = id;
        this.time = time;
        this.personalUserId = personalUserId;
        this.companyUserId = companyUserId;
        this.recruitInfoId = recruitInfoId;
        this.inviteState = inviteState;
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
     * @return time
     */
    public Date getTime() {
        return time;
    }

    /**
     * 设置
     * @param time
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * 获取
     * @return personalUserId
     */
    public int getPersonalUserId() {
        return personalUserId;
    }

    /**
     * 设置
     * @param personalUserId
     */
    public void setPersonalUserId(int personalUserId) {
        this.personalUserId = personalUserId;
    }

    /**
     * 获取
     * @return companyUserId
     */
    public int getCompanyUserId() {
        return companyUserId;
    }

    /**
     * 设置
     * @param companyUserId
     */
    public void setCompanyUserId(int companyUserId) {
        this.companyUserId = companyUserId;
    }

    /**
     * 获取
     * @return recruitInfoId
     */
    public int getRecruitInfoId() {
        return recruitInfoId;
    }

    /**
     * 设置
     * @param recruitInfoId
     */
    public void setRecruitInfoId(int recruitInfoId) {
        this.recruitInfoId = recruitInfoId;
    }

    /**
     * 获取
     * @return inviteState
     */
    public int getInviteState() {
        return inviteState;
    }

    /**
     * 设置
     * @param inviteState
     */
    public void setInviteState(int inviteState) {
        this.inviteState = inviteState;
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
        return "CompanyInvite{id = " + id + ", time = " + time + ", personalUserId = " + personalUserId + ", companyUserId = " + companyUserId + ", recruitInfoId = " + recruitInfoId + ", inviteState = " + inviteState + ", handleState = " + handleState + "}";
    }
}
