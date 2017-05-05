package com.ssdut.KindGardenProject.pojo;

public class Attendance {
    private Integer id;

    private String childname;

    private String signintime;

    private String signinreason;

    private String signouttime;

    private String signoutreason;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChildname() {
        return childname;
    }

    public void setChildname(String childname) {
        this.childname = childname == null ? null : childname.trim();
    }

    public String getSignintime() {
        return signintime;
    }

    public void setSignintime(String signintime) {
        this.signintime = signintime == null ? null : signintime.trim();
    }

    public String getSigninreason() {
        return signinreason;
    }

    public void setSigninreason(String signinreason) {
        this.signinreason = signinreason == null ? null : signinreason.trim();
    }

    public String getSignouttime() {
        return signouttime;
    }

    public void setSignouttime(String signouttime) {
        this.signouttime = signouttime == null ? null : signouttime.trim();
    }

    public String getSignoutreason() {
        return signoutreason;
    }

    public void setSignoutreason(String signoutreason) {
        this.signoutreason = signoutreason == null ? null : signoutreason.trim();
    }
}