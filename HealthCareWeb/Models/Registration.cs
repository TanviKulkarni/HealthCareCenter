using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace HealthCareWeb.Models
{
    public class Registration
    {
        public string Name { get; set; }
        public DateTime DOB { get; set; }
        public int Age { get; set; }
        public string EmailId { get; set; }
        public string Password { get; set; }
        public string User { get;set; }

        public int save(Registration re)
        {
            int i = 0; 
            string constring=@"Data Source=TANVI-PC\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True";
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            string q = "Insert into Registration values('" + Name + "','" + DOB + "','" + Age + "','" + EmailId + "','" + Password + "')";
            SqlCommand cmd = new SqlCommand(q,con);
            cmd.ExecuteNonQuery();
            i = 1;
            con.Close();
            
            return i;


        }

    }
}