package com.XiongHoubing.week2pritice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class HttpServlet extends javax.servlet.http.HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        PrintWriter writer = response.getWriter();
        Date date = new Date();
        writer.println("Hello Http");
        writer.println("Name :XiongHoubing");
        writer.println("ID :2019211001000917");
        writer.println("date and time " + date);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) {


    }
}
