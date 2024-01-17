using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ.admin_pages.Menu
{
    public partial class Menus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = Common.Services.select("SELECT * FROM [Menu]");
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }

        protected void dispalyMenu_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DeleteMenu")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                string sqlForGetMenu = "SELECT * FROM [Menu] WHERE [Id] =" + id;

                DataTable dt = Common.Services.select(sqlForGetMenu);

                if (dt.Rows.Count > 0)
                {
                    string fileName = dt.Rows[0]["ImageName"].ToString();

                    string filePath = Server.MapPath("\\uploads\\" + fileName);

                    FileInfo file = new FileInfo(filePath);

                    if (file.Exists)
                    {
                        file.Delete();
                    }

                    string sql = "DELETE FROM [Menu] WHERE [id] =" + id;
                    int effectedRows = Common.Services.execute(sql);
                    if (effectedRows > 0)
                    {
                        Response.Redirect("~/admin-pages/Menu/Menus.aspx");
                    }
                    else
                    {
                        panel_warning.Visible = true;
                        lbl_examlistwarning.Text = "Menu didn't deleted !";

                        ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                            "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
                    }
                }
            }
        }
    }
}