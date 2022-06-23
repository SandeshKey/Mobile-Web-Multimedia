using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            float celsuius = (float)Convert.ToDouble(dc.Text);

            float cConveter = (celsuius * (9 / 5) + 32);
            dfc.Text = Convert.ToString(cConveter);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            float fahrenheit = (float)Convert.ToDouble(df.Text);

            float cConveter = ((fahrenheit - 32) * (5 / 9));
            dcc.Text = Convert.ToString(cConveter);

        }
    }
}