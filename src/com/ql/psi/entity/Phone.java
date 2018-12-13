package com.ql.psi.entity;

public class Phone {
    private String phoneid;

    private String phonename;

    private String phonecontext;

    private String phonelable;

    private String phonehref;

    private String phoneclass;

    public String getPhoneid() {
        return phoneid;
    }

    public void setPhoneid(String phoneid) {
        this.phoneid = phoneid == null ? null : phoneid.trim();
    }

    public String getPhonename() {
        return phonename;
    }

    public void setPhonename(String phonename) {
        this.phonename = phonename == null ? null : phonename.trim();
    }

    public String getPhonecontext() {
        return phonecontext;
    }

    public void setPhonecontext(String phonecontext) {
        this.phonecontext = phonecontext == null ? null : phonecontext.trim();
    }

    public String getPhonelable() {
        return phonelable;
    }

    public void setPhonelable(String phonelable) {
        this.phonelable = phonelable == null ? null : phonelable.trim();
    }

    public String getPhonehref() {
        return phonehref;
    }

    public void setPhonehref(String phonehref) {
        this.phonehref = phonehref == null ? null : phonehref.trim();
    }

    public String getPhoneclass() {
        return phoneclass;
    }

    public void setPhoneclass(String phoneclass) {
        this.phoneclass = phoneclass == null ? null : phoneclass.trim();
    }
}