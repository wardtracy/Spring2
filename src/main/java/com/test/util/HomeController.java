package com.test.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.swing.*;
import javax.xml.transform.Result;
import javax.xml.ws.Action;
import java.sql.*;
import java.util.ArrayList;

@Controller
public class HomeController {

    @RequestMapping("/")


    public ModelAndView helloWorld() {

        return new ModelAndView("welcome", "message", "Greetings and Salutations,");
    }


    @RequestMapping("/userform")

    public ModelAndView userform() {
        return new ModelAndView("form", "inst", "Please enter info:");
    }

    @RequestMapping("/formhandler")

    public ModelAndView formhandler(@RequestParam("firstname") String firstname, @RequestParam("lastname") String lastname, @RequestParam("email") String email, @RequestParam("phonenumber") String phonenumber, @RequestParam("password") String password) {


        ModelAndView mv = new ModelAndView("formresponse");

        mv.addObject("firstname", firstname);
        mv.addObject("lastname", lastname);
        mv.addObject("email", email);
        mv.addObject("phonenumber", phonenumber);
        mv.addObject("password", password);
        return mv;
    }


    @RequestMapping(value = "getAllCustomers")
    public ModelAndView getAllCustomers() {

        //Define the data for the connection
        String dbAddress = "jdbc:mysql://localhost:3306/northwind";
        String username = "root";
        String password = "LetMeIN";

        try {
            //load driver
            Class.forName("com.mysql.jdbc.Driver");
            // DriverManager.registerDriver(new com.mysyql.jdbc.Driver);

            //create the db connection object
            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(dbAddress, username, password);

            //create the db statement
            String readCustomersCommmand = "select name, description, quantity, price from items";
            Statement readCustomers = mysqlConnection.createStatement();
            readCustomers.executeQuery(readCustomersCommmand);
            ResultSet results = readCustomers.executeQuery(readCustomersCommmand);

            //array list of customers
            ArrayList<Customer> customerList = new ArrayList<Customer>();

            //map form the ResultSet to the ArrayList
            while (results.next())
            {
                Customer temp = new Customer(results.getString(1), results.getString(2));
                customerList.add(temp);
            }

            return new ModelAndView("customerView","cList", customerList);
        } catch (Exception ex)
        {

        }
        return null; //create an error page with custom error messages
    }


}
