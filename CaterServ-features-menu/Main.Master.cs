using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null && Session["Admin"].ToString() == "False")
                {
                    loginLink.Text = "Log Out";
                    loginLink.Attributes["href"] = "pages/Logout"; 
                }
                else
                {
                    loginLink.Text = "Log In";
                    loginLink.Attributes["href"] = "pages/Login";
                }
            }
        }
    }
}
