package edu.ezd.model;

import java.util.Date;
import java.util.List;

/**
 * Created by JayJay on 2017/4/7.
 */
public class TheAttraction {
    private int theAttracionId;
    private String title;   //主标题
    private String theAttractionImg;    //图片
    private Date startTime; //开始时间
    private String contentBytheAttraction;  //大招会内容
    private String venue;   //举办地址
    private Date endTime;   //结束时间
    private List<TheAttractionApplicant> theAttractionApplicants;

    public int getTheAttracionId() {
        return theAttracionId;
    }

    public void setTheAttracionId(int theAttracionId) {
        this.theAttracionId = theAttracionId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTheAttractionImg() {
        return theAttractionImg;
    }

    public void setTheAttractionImg(String theAttractionImg) {
        this.theAttractionImg = theAttractionImg;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public String getContentBytheAttraction() {
        return contentBytheAttraction;
    }

    public void setContentBytheAttraction(String contentBytheAttraction) {
        this.contentBytheAttraction = contentBytheAttraction;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }


    public List<TheAttractionApplicant> getTheAttractionApplicants() {
        return theAttractionApplicants;
    }

    public void setTheAttractionApplicants(List<TheAttractionApplicant> theAttractionApplicants) {
        this.theAttractionApplicants = theAttractionApplicants;
    }

    @Override
    public String toString() {
        return "TheAttraction{" +
                "theAttracionId=" + theAttracionId +
                ", title='" + title + '\'' +
                ", theAttractionImg='" + theAttractionImg + '\'' +
                ", startTime=" + startTime +
                ", contentBytheAttraction='" + contentBytheAttraction + '\'' +
                ", venue='" + venue + '\'' +
                ", endTime=" + endTime +
                ", theAttractionApplicants=" + theAttractionApplicants +
                '}';
    }
}
