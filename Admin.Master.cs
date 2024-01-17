using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaterServ
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Admin"] == null || Session["Username"] == null)
                {
                    Response.Redirect("~/admin-pages/Login.aspx");
                }
            }

            homeLink.HRef = "~/admin-index.aspx";
            MenuLink.HRef = "~/admin-pages/Menu/Menus.aspx";
            categoryLink.HRef = "~/admin-pages/Category/Categories.aspx";
            FeedbackLink.HRef = "~/admin-index.aspx";
            InquiryLink.HRef = "~/admin-index.aspx";
            RequestLink.HRef = "~/admin-index.aspx";
        }


    }
}