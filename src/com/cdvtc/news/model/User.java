package com.cdvtc.news.model;

import java.util.Arrays;
import java.util.Date;

public class User {
    private Integer id;
    private String account;
    private String nickname;
    private String password;
    private String photo;
    private boolean forbidden;
    private String email;
    private String mobile;
    private Date birthday;
    private Date RegDate;
    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", nickname='" + nickname + '\'' +
                ", password='" + password + '\'' +
                ", photo='" + photo + '\'' +
                ", forbidden=" + forbidden +
                ", email='" + email + '\'' +
                ", mobile=" + mobile +
                ", birthday=" + birthday +
                ", RegDate=" + RegDate +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public boolean isForbidden() {
        return forbidden;
    }

    public void setForbidden(boolean forbidden) {
        this.forbidden = forbidden;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getRegDate() {
        return RegDate;
    }

    public void setRegDate(Date RegDate) {
        this.RegDate = RegDate;
    }



}
