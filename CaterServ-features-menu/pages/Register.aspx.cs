using System;
using System.Web.UI;

namespace CaterServ.pages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignBtn_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO [Users] (Name,Email,Number,Password,RoleId) VALUES('" + Username.Value + "','" + Email.Value + "','" + Number.Value + "','" + Password.Value + "',2)";

            int affectedRows = Common.Services.execute(sql);

            if (affectedRows < 0)
            {
                panel_warning.Visible = true;
                lbl_examlistwarning.Text = "Registration Is Faild";

                ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                    "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
            }
            else
            {
                Response.Redirect("~/pages/Login");
            }
        }
    }
}