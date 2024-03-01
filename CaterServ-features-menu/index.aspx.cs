using System;
using System.Web.UI;

namespace CaterServ
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null && Session["Admin"].ToString() == "False")
            {
                string sql = "INSERT INTO [BookingRequest] (UserId,Date,City,Venue,NumberOfPeople,FoodType,Time,StatusId) VALUES('" + Session["UserId"] + "','" + date.Text + "','" + city.Text + "','" + venue.Text + "','" + numberofpeople.Text + "','" + foodtype.SelectedValue + "','" + time.Text + "',1)";

                int affectedRows = Common.Services.execute(sql);

                if (affectedRows == 0)
                {
                    panel_warning.Visible = true;
                    lbl_examlistwarning.Text = "Request is not inserted";

                    ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                        "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
                }
            }
            else
            {
                panel_warning.Visible = true;
                lbl_examlistwarning.Text = "You Need To First Login.";

                ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                    "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
            }
        }
    }
}