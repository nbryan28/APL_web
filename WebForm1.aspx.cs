using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace APL_site
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //  CheckMysqlConnection();
                BindData();
            }

        }

        public void CheckMysqlConnection()
        {
            string connectionstring = @"datasource=localhost ;port=3306;username=root;password=atronixatl;database=parts;Allow User Variables=True";
            //Connection = New MySqlConnection("datasource=10.21.2.8;port=3306;username=root;password=aapl_1369;database=parts;Allow User Variables=True")
            using (MySqlConnection cn = new MySqlConnection(connectionstring))
            {
                try
                {
                    cn.Open();
                    Response.Write("Connection is good");
                }
                catch ( Exception ex){
                    
                }
            }
        }

        private void BindData()
        {
            string connectionstring = @"datasource=localhost ;port=3306;username=root;password=atronixatl;database=parts;Allow User Variables=True";
            //Connection = New MySqlConnection("datasource=10.21.2.8;port=3306;username=root;password=aapl_1369;database=parts;Allow User Variables=True")
            using (MySqlConnection cn = new MySqlConnection(connectionstring))
            {
                try
                {
                    MySqlDataAdapter adp = new MySqlDataAdapter("select * from devices", cn);
                    DataTable dt = new DataTable();

                    adp.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }


                }
                catch (Exception ex)
                {

                }
            }
        }

      
    }
}