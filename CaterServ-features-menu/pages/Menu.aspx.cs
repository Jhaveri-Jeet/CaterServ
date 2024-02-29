using System;
using System.Data;
using System.Web.UI.WebControls;

namespace CaterServ
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable categories = Common.Services.select("SELECT * FROM [Category]");
                if (categories.Rows.Count > 0)
                {
                    categoryRepeater.DataSource = categories;
                    categoryRepeater.DataBind();
                }

                int id = Convert.ToInt32(categories.Rows[0]["Id"]);

                DataTable menu = Common.Services.select("SELECT * FROM [Menu] WHERE CategoryId = " + id);
                if (menu.Rows.Count > 0)
                {
                    menuRepeater.DataSource = menu;
                    menuRepeater.DataBind();
                }
            }
        }

        //protected void categoryRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        //{
        //    if (e.CommandName == "Select")
        //    {
        //        int id = Convert.ToInt32(e.CommandArgument);

        //        DataTable menu = Common.Services.select("SELECT * FROM [Menu] WHERE CategoryId = " + id);
        //        if (menu.Rows.Count > 0)
        //        {
        //            menuRepeater.DataSource = menu;
        //            menuRepeater.DataBind();
        //        }
        //    }
        //}


        protected void categoryItem_Click(object sender, EventArgs e)
        {
            RepeaterItem itm = (sender as Button).Parent as RepeaterItem;

            HiddenField id = ((HiddenField)itm.FindControl("HiddenField1")) as HiddenField;

            if (id.Value != string.Empty && id != null)
            {


                DataTable menu = Common.Services.select("SELECT * FROM [Menu] WHERE CategoryId = " + id.Value);
                if (menu.Rows.Count > 0)
                {
                    menuRepeater.DataSource = menu;
                    menuRepeater.DataBind();
                }
            }

        }
    }
}