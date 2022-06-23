using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            float number1 = (float)Convert.ToDouble(num1.Text);
            float number2 = (float)Convert.ToDouble(num2.Text);
            float sum     = number1 + number2;
            float mul     = number1 * number2;

            showresult.InnerText = Convert.ToString("Sum is "+sum+ " "+"Multiply is"+mul);
            Label3.Text = Convert.ToString(sum);
        }

        
    }
}