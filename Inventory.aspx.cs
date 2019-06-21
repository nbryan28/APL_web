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
    public partial class Inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                show_inv();
            }

        }

        public void show_inv()
        {
            string connectionstring = @"datasource=localhost ;port=3306;username=root;password=atronixatl;database=parts;Allow User Variables=True";
            //Connection = New MySqlConnection("datasource=10.21.2.8;port=3306;username=root;password=aapl_1369;database=parts;Allow User Variables=True")
            using (MySqlConnection cn = new MySqlConnection(connectionstring))
            {
                try
                {

                    MySqlDataAdapter adp = new MySqlDataAdapter("SELECT  current_qty, part_name, description, manufacturer, min_qty, max_qty from Inventory.inventory_qty", cn);
                    DataTable dt = new DataTable();

                    adp.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        GridView3.DataSource = dt;
                        GridView3.DataBind();
                    }


                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}