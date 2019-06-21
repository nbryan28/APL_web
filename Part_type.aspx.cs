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
    public partial class Part_type : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetData();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
           
                html.Append("<table>");

                //Building the Header row.
                html.Append("<tr>");

                html.Append("<th>");
                html.Append("</th>");

                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }

             
                html.Append("</tr>");



                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
             

                    foreach (DataColumn column in dt.Columns)
                    {

                        html.Append("<td>");
                        html.Append("<img src=\"Parts_Pictures/" + row[column.ColumnName] + ".jpg\" height='182' width='182' align='middle' ");
                        html.Append("</td>");


                        html.Append("<td>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</td>");
                    }

                  
                    html.Append("</tr>");
                }

                //Table end.
                html.Append("</table>");

                //Append the HTML string to Placeholder.
                PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        private DataTable GetData()
        {

         
                string connectionstring = @"datasource=localhost ;port=3306;username=root;password=atronixatl;database=parts;Allow User Variables=True";
                using (MySqlConnection con = new MySqlConnection(connectionstring))
                {
           
                    using (MySqlCommand cmd = new MySqlCommand("SELECT Part_Type FROM parts_type_table"))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                return dt;
                            }
                        }
                    }
                }

            
          
                

        }
    }
}