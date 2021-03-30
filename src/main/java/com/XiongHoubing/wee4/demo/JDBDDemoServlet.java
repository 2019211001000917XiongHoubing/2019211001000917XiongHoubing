package com.XiongHoubing.wee4.demo;

import javax.servlet.*;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import static java.lang.Class.forName;

@WebServlet(
        urlPatterns={"/jdbc"},
        initParams = {
                @WebInitParam(name = "driver",value = "com.microsoft.sqlserver.jdbc.SQLServerDriver"),
                @WebInitParam(name = "url",value = "jdbc:sqlserver://localhost;databaseName=jsp"),
                @WebInitParam(name = "username",value = "sa"),
                @WebInitParam(name = "password",value = "200113"),
        },loadOnStartup = 1
)

public class JDBDDemoServlet extends HttpServlet {
    Connection con = null;
    @Override
    public void init() throws ServletException{


        ServletConfig config = getServletConfig();
        String driver=config.getInitParameter("driver");
        String url=config.getInitParameter("url");
        String username=config.getInitParameter("username");
        String password=config.getInitParameter("password");
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,username,password);
            System.out.println("init-->"+con);
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet()");
        String sql="select * from user";
        try {
            ResultSet rs=con.createStatement().executeQuery(sql);
            while (rs.next()){

            }
        } catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    public void destroy(){
        super.destroy();
        try {
            con.close();
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }
}
