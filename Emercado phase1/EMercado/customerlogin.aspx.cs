﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class customerlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void loginbutton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MercadoDb"].ConnectionString);
        
        conn.Open();

        string username = userName.Value;

        string password = pwd.Value;


        userNameError.Text = "";
        pwdError.Text = "";


        SqlCommand usernamecmd = new SqlCommand("Select count(*) from customerregistration where username = '" + username +"'",conn);

        int returnrows = Convert.ToInt16(usernamecmd.ExecuteScalar().ToString());


        conn.Close();

        if (returnrows == 0)
        {
           // Response.Write("User name is Not Correct");
            userNameError.Text = "User Name is Incorrect";
        }
        else
        {

            conn.Open();


            SqlCommand pwdcommand = new SqlCommand("select password from customerregistration where username = '" + username + "'", conn);


            SqlDataReader reader = pwdcommand.ExecuteReader();


            while (reader.Read())
            {
                if (password == reader["password"].ToString().Replace(" ", ""))
                {
                    Session["customerusername"] = username;
                   // Response.Write("Successfully Logged in");
                    Response.Redirect("farmerhomepage.aspx");
                }
                else
                {
                    pwdError.Text = "Password Error";
                   // Response.Write("Password MisMatch!!");
                }
            }

            reader.Close();

            conn.Close();
        }

    }
}