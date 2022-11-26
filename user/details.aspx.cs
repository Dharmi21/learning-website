using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newwebsite.user
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void cat_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "video")
            {
                Response.Redirect("video.aspx?CAT_ID=" + e.CommandArgument.ToString());
            }
        }
    }
}