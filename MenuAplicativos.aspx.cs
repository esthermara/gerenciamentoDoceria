using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GerenciamentoDoceria
{
    public partial class MenuAplicativos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var nomeUsuario = Session["ssnUsuario"].ToString();
            lblBemvindo.Text = "Seja bem-vindo (a) " + nomeUsuario + "!";
        }

        protected void btnCaixa_Click(object sender, EventArgs e)
        {
            Response.Redirect("Caixa.aspx");
        }

        protected void btnCalculadora_Click(object sender, EventArgs e)
        {
            Response.Redirect("CalculadoraPrecificacao.aspx");
        }
    }
}