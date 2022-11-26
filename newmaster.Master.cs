using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newwebsite
{
    public partial class newmaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
               if (Session["role"].Equals("user"))
                {
                    HyperLink5.Visible = true; // logout link button
                    hello_user.Visible = true;//hello username link button
                    course.Visible = true;
                    HyperLink1.Visible = false;
                    HyperLink2.Visible = false;
                    HyperLink3.Visible = false;
                    HyperLink4.Visible = false;
                    HyperLink8.Visible = true;
                    HyperLink9.Visible = false;


                }
                else if (Session["role"].Equals("admin"))
                {
                    HyperLink5.Visible = true; // logout link button
                    hello_user.Visible = true;//hello username link button
                    course.Visible = false;
                    HyperLink1.Visible = true;
                    HyperLink2.Visible = true;
                    HyperLink3.Visible = true;
                    HyperLink4.Visible = true;
                    HyperLink8.Visible = false;
                    HyperLink6.Visible = false;

                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void course_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "details")
            {
                Response.Redirect("details.aspx?C_ID=" + e.CommandArgument.ToString());
            }
        }

      

      

       

        
    }
}