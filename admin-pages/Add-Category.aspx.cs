using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ.admin_pages
{
    public partial class Add_Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_category(object sender, EventArgs e)
        {
            string sql = "INSERT INTO [Category] (name) VALUES ('" + exampleInputCategory1.Text + "')";
            int effectedRows = Common.Services.execute(sql);
        }
    }
}