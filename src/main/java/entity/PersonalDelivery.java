package entity;

import java.util.Date;

/**
 * @Version 1.0
 * @Description 个人&企业关系表  投递-接收简历 11.30
 * @Author 22413
 * @Aate 2021/11/28 13:16
 */
public class PersonalDelivery {
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

    //投递状态-是否投递 0代表否  1代表是
    int deliverState;

    //处理状态-是否处理 0代表-企业未读  1代表-企业已阅  2代表-企业已回复
    int handleState;


    public PersonalDelivery() {
    }

    public PersonalDelivery(int id, Date time, int personalUserId, int companyUserId, int recruitInfoId, int deliverState, int handleState) {
        this.id = id;
        this.time = time;
        this.personalUserId = personalUserId;
        this.companyUserId = companyUserId;
        this.recruitInfoId = recruitInfoId;
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
        return "PersonalDelivery{id = " + id + ", time = " + time + ", personalUserId = " + personalUserId + ", companyUserId = " + companyUserId + ", recruitInfoId = " + recruitInfoId + ", deliverState = " + deliverState + ", handleState = " + handleState + "}";
    }
}
