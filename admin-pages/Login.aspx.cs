using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ.admin_pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            DataTable dt = Common.Services.select("" +
                "SELECT * FROM " +
                "   [users] " +
                "WHERE " +
                "   [Name] = '" + exampleInputEmail1.Text + "' " +
                "AND " +
                "   [Password] = '" + exampleInputPassword1.Text + "'" +
                "AND " +
                "   [RoleId] = 1 ");

            if (dt.Rows.Count == 1)
            {
                Session["Admin"] = true;
                Session["UserName"] = exampleInputEmail1.Text;

                Response.Redirect("~/admin-index.aspx");
            }
            else
            {
                panel_warning.Visible = true;
                lbl_examlistwarning.Text = "Username Or Password";

                ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                    "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);

            }
        }
    }
}