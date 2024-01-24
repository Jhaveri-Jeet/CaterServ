using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ.admin_pages.Menu
{
    public partial class Add_Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "SELECT * FROM [Category]";
                DataTable dt = Common.Services.select(sql);
                if (dt.Rows.Count > 0)
                {
                    CategoryList.DataSource = dt;
                    CategoryList.DataTextField = "name";
                    CategoryList.DataValueField = "id";
                    CategoryList.DataBind();
                }
            }
        }

        protected void add_menu(object sender, EventArgs e)
        {
            string path = Server.MapPath("\\uploads\\");
            if (MenuImageUpload.HasFile)
            {
                string imageName = Path.GetFileName(MenuImageUpload.FileName);
                string extension = Path.GetExtension(imageName);
                HttpPostedFile postedFile = MenuImageUpload.PostedFile;
                int lenght = postedFile.ContentLength;

                if ((extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == ".jpeg"))
                {
                    MenuImageUpload.SaveAs(path + imageName);

                    string sql = "INSERT INTO [Menu] (CategoryId,Name,Description,Price,ImageName) VALUES ('" + CategoryList.SelectedValue + "','" + NameInput.Text + "','" + DescriptionInput.Text + "','" + int.Parse(PriceInput.Text) + "','" + imageName + "')";

                    int effectedRows = Common.Services.execute(sql);

                    if (effectedRows > 0)
                    {
                        Response.Redirect("~/admin-pages/Menu/Menus.aspx");
                    }
                    else
                    {
                        panel_warning.Visible = true;
                        lbl_examlistwarning.Text = "Category didn't updated !";

                        ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                            "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
                    }
                }
                else
                {
                    panel_warning.Visible = true;
                    lbl_examlistwarning.Text = "Iamge is Only Supported in jpg/jpeg/png Format !";

                    ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                        "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
                }
            }
        }
    }
}