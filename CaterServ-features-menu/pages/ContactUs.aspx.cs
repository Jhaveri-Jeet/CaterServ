using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int affectedRows = Common.Services.execute("INSERT INTO [Contact] (Name,Email,Message) VALUES('"+name.Text+"','"+email.Text+"','"+message.Text+"')");

            if(affectedRows < 0)
            {
                panel_warning.Visible = true;
                lbl_examlistwarning.Text = "Contact Is Not Inserted.";

                ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                    "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
            }
        }
    }
}