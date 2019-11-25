package com.zhg.javakc.modules.test.controller;

import org.apache.commons.mail.HtmlEmail;


public class QtzTest {

    public void send(){}


    public static void main(String[] args) {
        //邮件
        HtmlEmail email=new HtmlEmail();
        try {
            //服务器名陈
            email.setHostName("smtp.163.com");
            //字符集编码设置
            email.setCharset("utf-8");
            //收件人的邮箱
            email.addTo("ds175085@163.com");
            //发件人的邮箱
            email.setFrom("ds175085@163.com");
            //认证信息（用户名＋密码）
            email.setAuthentication("ds175085@163.com", "ds175085");
            //设置主题
            email.setSubject("本周六放假通知~~~~~");
            //内容
            email.setMsg("采集数据属江苏数据数据时速菊花酥");
            //发送
            email.send();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
