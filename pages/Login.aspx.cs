using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ.pages
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
                "   [Name] = '" + Username.Value + "' " +
                "AND " +
                "   [Password] = '" + Password.Value + "'" +
                "AND " +
                "   [RoleId] = 2 ");

            if (dt.Rows.Count == 1)
            {
                Session["Admin"] = "False";
                Session["UserId"] = dt.Rows[0]["Id"];
                Session["UserName"] = Username.Value;

                Response.Redirect("~/index.aspx");
            }
            else
            {
                panel_warning.Visible = true;
                lbl_examlistwarning.Text = "Username Or Password Is Warning";

                ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                    "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);

            }
        }
    }
}