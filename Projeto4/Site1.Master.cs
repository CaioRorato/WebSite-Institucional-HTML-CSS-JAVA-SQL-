using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto4
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["autenticado"] != null)
            {
                LinkLogin.Visible = false;
                LinkLogout.Visible = true;
                LinkUsuarios.Visible = true;
                LinkExececoes.Visible = true;
            }
            else
            {
                LinkLogin.Visible = true;
                LinkLogout.Visible = false;
                LinkUsuarios.Visible = false;
                LinkExececoes.Visible = false;
            }
        }   

    }
}