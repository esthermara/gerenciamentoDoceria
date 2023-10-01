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

        protected void btnProdutos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Produtos.aspx");
        }

        protected void btnAgendaEncomendas_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgendaEncomendas.aspx");
        }

        protected void btnVendas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vendas.aspx");
        }

        protected void btnFinanceiro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Financeiro.aspx");
        }

        protected void btnEstoque_Click(object sender, EventArgs e)
        {
            Response.Redirect("Estoque.aspx");
        }
    }
}