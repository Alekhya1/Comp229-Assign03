using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage  != null)
            {
                Control placeHolder =
                    PreviousPage.Controls[0].FindControl("ContentPlaceHolder1");
                TextBox SourceTextBox = (TextBox)placeHolder.FindControl("LastName");
                if (SourceTextBox != null)
                {
                    label1.Text = SourceTextBox.Text;
                }
            }
        }
    }
}