using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ.admin_pages.Category
{
    public partial class Edit_Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    string sql = "SELECT * FROM [Category] WHERE [Id] =" + id;
                    DataTable dataTable = Common.Services.select(sql);

                    if (dataTable.Rows.Count > 0)
                    {
                        exampleInputCategory1.Text = dataTable.Rows[0]["Name"].ToString();
                    }
                }
            }
        }

        protected void edit_category(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            string sql = "UPDATE [Category] SET [Name] = '" + exampleInputCategory1.Text + "' WHERE [id] = " + id;
            int effectedRows = Common.Services.execute(sql);
            if (effectedRows > 0)
            {
                Response.Redirect("~/admin-pages/Category/Categories.aspx");
            }
            else
            {
                panel_warning.Visible = true;
                lbl_examlistwarning.Text = "Category didn't updated !";

                ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                    "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
            }
        }
    }
}