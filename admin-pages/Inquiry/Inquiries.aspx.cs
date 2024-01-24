using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ.admin_pages.Inquiry
{
    public partial class Inquiries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = Common.Services.select("SELECT * FROM [Contact]");
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
    }
}