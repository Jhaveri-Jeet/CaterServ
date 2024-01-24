using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ.admin_pages.Feedback
{
    public partial class Feedbacks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = Common.Services.select("SELECT * FROM [Feedback]");
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }

        protected void dispalyFeedback_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DeleteFeedback")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                string sql = "DELETE FROM [Feedback] WHERE [id] =" + id;
                int effectedRows = Common.Services.execute(sql);
                if (effectedRows > 0)
                {
                    Response.Redirect("~/admin-pages/Feedback/Feedbacks.aspx");
                }
                else
                {
                    panel_warning.Visible = true;
                    lbl_examlistwarning.Text = "Feedback didn't deleted !";

                    ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                        "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
                }
            }
        }
    }
}