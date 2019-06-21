using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;


namespace APL_site
{
    public partial class BOM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                string connectionstring = @"datasource=localhost ;port=3306;username=root;password=atronixatl;database=parts;Allow User Variables=True";
                DataTable dt = new DataTable();

                using (MySqlConnection con = new MySqlConnection(connectionstring))
                {

                    using (MySqlCommand cmd = new MySqlCommand("SELECT mr_name FROM  Material_Request.mr"))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (dt = new DataTable())
                            {
                                sda.Fill(dt);

                            }
                        }
                    }
                }

                if (dt.Rows.Count > 0)
                {

                    DropDownList1.DataSource = dt;
                    DropDownList1.DataTextField = "mr_name";
                    DropDownList1.DataValueField = "mr_name";
                    DropDownList1.DataBind();
                }


                // Populate job box
                DataTable dt2 = new DataTable();

                using (MySqlConnection con = new MySqlConnection(connectionstring))
                {

                    using (MySqlCommand cmd = new MySqlCommand("SELECT distinct job FROM  Material_Request.mr order by job"))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (dt2 = new DataTable())
                            {
                                sda.Fill(dt2);

                            }
                        }
                    }
                }

                if (dt2.Rows.Count > 0)
                {

                    DropDownList2.DataSource = dt2;
                    DropDownList2.DataTextField = "job";
                    DropDownList2.DataValueField = "job";
                    DropDownList2.DataBind();
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            show_mr(DropDownList1.SelectedValue.ToString());
          
           
        }

        public void show_mr(string mr_name)
        {
            string connectionstring = @"datasource=localhost ;port=3306;username=root;password=atronixatl;database=parts;Allow User Variables=True";
            //Connection = New MySqlConnection("datasource=10.21.2.8;port=3306;username=root;password=aapl_1369;database=parts;Allow User Variables=True")
            using (MySqlConnection cn = new MySqlConnection(connectionstring))
            {
                try
                {

                    MySqlDataAdapter adp = new MySqlDataAdapter("SELECT Part_No, Description, Manufacturer, Vendor, Price, Qty, qty_fullfilled FROM  Material_Request.mr_data where mr_name = '" + mr_name + "'", cn);
                    DataTable dt = new DataTable();

                    adp.Fill(dt);

                   if (dt.Rows.Count > 0)
                    {
                         GridView2.DataSource = dt;
                          GridView2.DataBind();
                    }


                }
                catch (Exception ex)
                {

                }
            }
        }

      
    }
}