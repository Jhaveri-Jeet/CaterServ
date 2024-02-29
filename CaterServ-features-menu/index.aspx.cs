using System;
using System.Globalization;
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

                string dateString = date.Text;
                string timeString = time.Text;

                // Parse the date and time strings to a single DateTime object
                DateTime dateTime;
                if (!DateTime.TryParseExact(dateString + " " + timeString, "yyyy-MM-dd HH:mm", null, DateTimeStyles.None, out dateTime))
                {
                    lbl_examlistwarning.Text = "Invalid date or time format.";
                    return;
                }

                // Format the DateTime object as "dd/MM/yyyy hh:mm:ss tt"
                string formattedDateTime = dateTime.ToString("dd/MM/yyyy hh:mm:ss tt");



                string sql = "INSERT INTO [BookingRequest] (UserId,Date,City,Venue,NumberOfPeople,FoodType,Time,StatusId) VALUES('" + Session["UserId"] + "'," + dateTime.Date + ",'" + city.Text + "','" + venue.Text + "','" + numberofpeople.Text + "','" + foodtype.SelectedValue + "','" + formattedDateTime + "',1)";

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