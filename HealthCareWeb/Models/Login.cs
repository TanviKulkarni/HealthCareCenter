using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace HealthCareWeb.Models
{
    public class Login
    {
        public string s = "";
        public string EmailId { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
        public string User { get; set; }

        public int Check(Login l)
        {
            
            int i = 0;
            string constr = @"Data Source=TANVI-PC\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            
            con.Open();
            string q = "select * from Registration where EmailId='"+ EmailId +"' and Pass='"+ Password +"'";
            //SqlDataAdapter da = new SqlDataAdapter(q, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            SqlCommand cmd = new SqlCommand(q,con);
            SqlDataReader dr = null;
            dr = cmd.ExecuteReader();
            while(dr.Read())
            {
               s = dr["Name"].ToString();
            }
            dr.Close();
            i = Convert.ToInt32(cmd.ExecuteScalar());
         
            con.Close();
            return i;
        }
        public string getID(Login l)
        {
            Registration re=new Registration();
            string i = "";
            string constr = @"Data Source=TANVI-PC\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            //DataTable dt = new DataTable();
            NameValueCollection collect = new NameValueCollection();

            con.Open();
            string q = "select Name from Registration where EmailId='" + EmailId + "'";
            SqlDataReader dr = null;           
            SqlCommand cmd = new SqlCommand(q, con);
            dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                i = dr["Name"].ToString();
                
            }
           
            con.Close();
            return i;
        }
    }
}