using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADS2022M;
using System.Runtime.CompilerServices;

namespace Projeto4
{
    public partial class ExibirExcecoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ControleExcecoes controle = new ControleExcecoes();
            Excecoes.Text = controle.LoadException().Replace("\n", "<br/>");
        }

        protected void Clear_Click(object sender, EventArgs e) 
        {
            ControleExcecoes controle = new ControleExcecoes();
            controle.ClearException();
            Excecoes.Text = "";
        }
    }
}