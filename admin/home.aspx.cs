using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newwebsite.admin
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    

        protected void addcourse_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adcourse.aspx");
        }

        protected void adcategoury_Click1(object sender, EventArgs e)
        {
            Response.Redirect("addcategory.aspx");
        }

        protected void addetails_Click1(object sender, EventArgs e)
        {
            Response.Redirect("addetails.aspx");
        }

        protected void table_Click1(object sender, EventArgs e)
        {
            Response.Redirect("table.aspx");
        }
    }
}