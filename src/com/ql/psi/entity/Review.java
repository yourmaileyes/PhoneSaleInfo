package com.ql.psi.entity;

import java.util.Date;

public class Review {
    private String reviewid;

    private String context;

    private String userid;

    private String type;

    private Date time;

    public String getReviewid() {
        return reviewid;
    }

    public void setReviewid(String reviewid) {
        this.reviewid = reviewid == null ? null : reviewid.trim();
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context == null ? null : context.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}