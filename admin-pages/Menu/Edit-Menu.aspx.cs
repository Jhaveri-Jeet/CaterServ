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
    public partial class Edit_Menu : System.Web.UI.Page
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

                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    string sqlForOldData = "SELECT * FROM [Menu] WHERE [Id] =" + id;
                    DataTable dataTable = Common.Services.select(sqlForOldData);

                    if (dataTable.Rows.Count > 0)
                    {
                        NameInput.Text = dataTable.Rows[0]["Name"].ToString();
                        PriceInput.Text = dataTable.Rows[0]["Price"].ToString();
                        DescriptionInput.Text = dataTable.Rows[0]["Description"].ToString();
                        CurrentMenuImage.Src = "~/uploads/" + dataTable.Rows[0]["ImageName"].ToString();

                        if (CategoryList.Items.FindByValue(dataTable.Rows[0]["CategoryId"].ToString()) != null)
                        {
                            CategoryList.Items.FindByValue(dataTable.Rows[0]["CategoryId"].ToString()).Selected = true;
                        }
                    }
                }
            }

        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            string sqlForOldData = "SELECT * FROM [Menu] WHERE [Id] =" + id;
            DataTable dataTable = Common.Services.select(sqlForOldData);

            string ImageName = dataTable.Rows[0]["ImageName"].ToString();

            string path = Server.MapPath("\\uploads\\");
            if (MenuImageUpload.HasFile)
            {


                string imageName = Path.GetFileName(MenuImageUpload.FileName);
                string extension = Path.GetExtension(imageName);
                HttpPostedFile postedFile = MenuImageUpload.PostedFile;
                int lenght = postedFile.ContentLength;

                if ((extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == ".jpeg"))
                {

                    if (dataTable.Rows.Count > 0)
                    {
                        string fileName = dataTable.Rows[0]["ImageName"].ToString();

                        string filePath = Server.MapPath("\\uploads\\" + fileName);

                        FileInfo file = new FileInfo(filePath);

                        if (file.Exists)
                        {
                            file.Delete();
                        }
                    }

                    MenuImageUpload.SaveAs(path + imageName);

                    ImageName = imageName;
                }
                else
                {
                    panel_warning.Visible = true;
                    lbl_examlistwarning.Text = "Iamge is Only Supported in jpg/jpeg/png Format !";

                    ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                        "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
                }

            }
            string sql = "UPDATE [Menu] SET [Name] = '" + NameInput.Text + "',[Price] = '" + int.Parse(PriceInput.Text) + "',[CategoryId] = '" + CategoryList.SelectedValue + "',[ImageName] = '" + ImageName + "',[Description] = '" + DescriptionInput.Text + "' WHERE [id] = " + id;
            int effectedRows = Common.Services.execute(sql);
            if (effectedRows > 0)
            {
                Response.Redirect("~/admin-pages/Menu/Menus.aspx");
            }
            else
            {
                panel_warning.Visible = true;
                lbl_examlistwarning.Text = "Me  nu didn't updated !";

                ScriptManager.RegisterStartupScript(this, GetType(), "HidePanelScript", "" +
                    "setTimeout(function() { document.getElementById('" + panel_warning.ClientID + "').style.display='none'; }, 1000);", true);
            }
        }
    }
}