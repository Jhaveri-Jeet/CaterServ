using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ.admin_pages.Request
{
    public partial class SingleRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.QueryString["id"] != null)
                {
                    string sql = "SELECT * FROM [Status]";
                    DataTable dtForStatus = Common.Services.select(sql);
                    if (dtForStatus.Rows.Count > 0)
                    {
                        Status.DataSource = dtForStatus;
                        Status.DataTextField = "name";
                        Status.DataValueField = "id";
                        Status.DataBind();
                    }

                    int id = int.Parse(Request.QueryString["id"]);

                    string sqlForRequest = @"SELECT 
                                    BookingRequest.Id,
                                    BookingRequest.UserId,
                                    BookingRequest.Date,
                                    BookingRequest.Time,
                                    BookingRequest.City,
                                    BookingRequest.Venue,
                                    BookingRequest.NumberOfPeople,
                                    BookingRequest.FoodType,
                                    BookingRequest.StatusId, 
                                    Users.Name,
                                    Users.Email,
                                    Users.Number
                                FROM 
                                    BookingRequest
                                INNER JOIN
                                    Users
                                ON
                                    Users.Id = BookingRequest.UserId
                                WHERE
                                    BookingRequest.Id = " + id;

                    DataTable dt = Common.Services.select(sqlForRequest);

                    if (dt.Rows.Count > 0)
                    {
                        Date.InnerText = dt.Rows[0]["Date"].ToString();
                        NoOfPeople.InnerText = dt.Rows[0]["NumberOfPeople"].ToString();
                        FoodType.InnerText = dt.Rows[0]["FoodType"].ToString();
                        Time.InnerText = dt.Rows[0]["Time"].ToString();
                        Name.InnerText = dt.Rows[0]["Name"].ToString();
                        Email.InnerText = dt.Rows[0]["Email"].ToString();
                        Number.InnerText = dt.Rows[0]["Number"].ToString();
                        City.InnerText = dt.Rows[0]["City"].ToString();
                        Venue.InnerText = dt.Rows[0]["Venue"].ToString();

                        if (Status.Items.FindByValue(dt.Rows[0]["StatusId"].ToString()) != null)
                        {
                            Status.Items.FindByValue(dt.Rows[0]["StatusId"].ToString()).Selected = true;
                        }
                    }
                }
            }
        }

        protected void status_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);

            int statusId = Convert.ToInt32(Status.SelectedValue);
            string sql = "UPDATE [BookingRequest] SET [StatusId] = " + statusId + " WHERE Id = " + id;

            int effectedRows = Common.Services.execute(sql);

            if (effectedRows > 0)
            {
                Response.Redirect("~/admin-pages/Request/Requests.aspx");
            }
            else
            {
                panel_warning.Visible = true;
                lbl_examlistwarning.Text = "Status didn't updated !";

                ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                    "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
            }
        }
    }
}