using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GerenciamentoDoceria
{
    public partial class AgendaEncomendas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnCadastrarEncomenda.OnClientClick = "abrirPopup(); return false;";
        }
    }
}