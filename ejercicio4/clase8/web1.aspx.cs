using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 
namespace clase8
{
    public partial class web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            SqlDataAdapter ada = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = "server=DESKTOP-2O58G6O\\SQLEXPRESS;user=usuario324;pwd=123456;database=inf324test";
            ada.SelectCommand = new SqlCommand();
            ada.SelectCommand.Connection = con;
            ada.SelectCommand.CommandText = "select nombreC AS NOMBRE from docente";
            ada.Fill(ds);

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Response.Write(GridView1.SelectedRow.Cells[1].Text);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            SqlCommand cmd = new SqlCommand("Delete From alumno (ci,	nombre	,paterno,	departamento)");
            GridView1.DataBind();
        }
       


    }
}