using System;
using System.Collections.Generic;
using System.Data;
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

                        if (CategoryList.Items.FindByValue(dataTable.Rows[0]["CategoryId"].ToString()) != null)
                        {
                            CategoryList.Items.FindByValue(dataTable.Rows[0]["CategoryId"].ToString()).Selected = true;
                        }
                    }
                }
            }

        }
    }
}