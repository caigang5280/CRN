package vo;

import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author 22413
 * @Aate 2021/12/2 18:14
 */
public class PageVO<T> {

    //当前页
    private int pageNow;
    //总页数
    private int myPages;
    //总记录数
    private int myCounts;
    //条件
    private String queryJobTitle;  //职位
    private String queryJobExperience;  //工作经验

    private String queryEducation;  //学历
    private String querySalary;  //工作薪资
    private String queryJobAddress;  //工作地址
    //数据
    private List<T> recruitInfos;

    public PageVO(int pageNow, int myPages, int myCounts, String queryJobTitle, String queryJobExperience, String queryEducation, String querySalary, String queryJobAddress, List<T> recruitInfos) {
        this.pageNow = pageNow;
        this.myPages = myPages;
        this.myCounts = myCounts;
        this.queryJobTitle = queryJobTitle;
        this.queryJobExperience = queryJobExperience;
        this.queryEducation = queryEducation;
        this.querySalary = querySalary;
        this.queryJobAddress = queryJobAddress;
        this.recruitInfos = recruitInfos;
    }

    public PageVO() {
    }

    /**
     * 获取
     * @return pageNow
     */
    public int getPageNow() {
        return pageNow;
    }

    /**
     * 设置
     * @param pageNow
     */
    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    /**
     * 获取
     * @return myPages
     */
    public int getMyPages() {
        return myPages;
    }

    /**
     * 设置
     * @param myPages
     */
    public void setMyPages(int myPages) {
        this.myPages = myPages;
    }

    /**
     * 获取
     * @return myCounts
     */
    public int getMyCounts() {
        return myCounts;
    }

    /**
     * 设置
     * @param myCounts
     */
    public void setMyCounts(int myCounts) {
        this.myCounts = myCounts;
    }

    /**
     * 获取
     * @return queryJobTitle
     */
    public String getQueryJobTitle() {
        return queryJobTitle;
    }

    /**
     * 设置
     * @param queryJobTitle
     */
    public void setQueryJobTitle(String queryJobTitle) {
        this.queryJobTitle = queryJobTitle;
    }

    /**
     * 获取
     * @return queryJobExperience
     */
    public String getQueryJobExperience() {
        return queryJobExperience;
    }

    /**
     * 设置
     * @param queryJobExperience
     */
    public void setQueryJobExperience(String queryJobExperience) {
        this.queryJobExperience = queryJobExperience;
    }

    /**
     * 获取
     * @return queryEducation
     */
    public String getQueryEducation() {
        return queryEducation;
    }

    /**
     * 设置
     * @param queryEducation
     */
    public void setQueryEducation(String queryEducation) {
        this.queryEducation = queryEducation;
    }

    /**
     * 获取
     * @return querySalary
     */
    public String getQuerySalary() {
        return querySalary;
    }

    /**
     * 设置
     * @param querySalary
     */
    public void setQuerySalary(String querySalary) {
        this.querySalary = querySalary;
    }

    /**
     * 获取
     * @return queryJobAddress
     */
    public String getQueryJobAddress() {
        return queryJobAddress;
    }

    /**
     * 设置
     * @param queryJobAddress
     */
    public void setQueryJobAddress(String queryJobAddress) {
        this.queryJobAddress = queryJobAddress;
    }

    /**
     * 获取
     * @return recruitInfos
     */
    public List<T> getRecruitInfos() {
        return recruitInfos;
    }

    /**
     * 设置
     * @param recruitInfos
     */
    public void setRecruitInfos(List<T> recruitInfos) {
        this.recruitInfos = recruitInfos;
    }

    public String toString() {
        return "PageVO{pageNow = " + pageNow + ", myPages = " + myPages + ", myCounts = " + myCounts + ", queryJobTitle = " + queryJobTitle + ", queryJobExperience = " + queryJobExperience + ", queryEducation = " + queryEducation + ", querySalary = " + querySalary + ", queryJobAddress = " + queryJobAddress + ", recruitInfos = " + recruitInfos + "}";
    }
}
