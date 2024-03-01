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
            if (Session["Admin"].ToString() == "False")
            {
                Response.Redirect("~/admin-pages/Login.aspx");
            }
            if (!IsPostBack)
            {
                Console.WriteLine("HEllo");
            }

            homeLink.HRef = "~/admin-index.aspx";
            MenuLink.HRef = "~/admin-pages/Menu/Menus.aspx";
            categoryLink.HRef = "~/admin-pages/Category/Categories.aspx";
            FeedbackLink.HRef = "~/admin-pages/Feedback/Feedbacks.aspx";
            InquiryLink.HRef = "~/admin-pages/Inquiry/Inquiries.aspx";
            RequestLink.HRef = "~/admin-pages/Request/Requests.aspx";

        }


    }
}