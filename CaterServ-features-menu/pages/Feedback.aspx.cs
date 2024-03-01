using System;
using System.Web.UI;

namespace CaterServ
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int affectedRows = Common.Services.execute("INSERT INTO [Feedback] (Title,Description) VALUES('" + title.Text + "','" + description.Text + "')");

            if (affectedRows < 0)
            {
                panel_warning.Visible = true;
                lbl_examlistwarning.Text = "Feedback Is Not Inserted.";

                ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                    "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
            }
        }
    }
}