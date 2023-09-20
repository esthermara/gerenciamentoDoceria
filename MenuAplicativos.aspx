<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAplicativos.aspx.cs" Inherits="GerenciamentoDoceria.MenuAplicativos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Menu Aplicativos</title>

    <style>
        body {
            justify-content: center;
            font-family: nunito, sans-serif;
            background-color: white;
        }

        .botao-menu {
            border-radius: 30px;
            height: 70px;
            width: 200px;
            font-size: large;
            text-align: center;
            justify-content: center;
            border: 1px solid #d295ec;
            color: #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            cursor: pointer;
            background-color: white;
            white-space: pre-line;
            word-wrap: break-word;
        }

        .botao-menu:hover {
            background-color: rgba(210, 149, 236, 0.1);
        }

        .botao-menu-maior {
            border-radius: 30px;
            height: 70px;
            width: 400px;
            font-size: large;
            text-align: center;
            justify-content: center;
            border: 1px solid #d295ec;
            color: #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            cursor: pointer;
            background-color: white;
        }

        .botao-menu-maior:hover {
            background-color: rgba(210, 149, 236, 0.1);
        }
        
        .bem-vindo {
            margin-left: 20px;
            font-size: large;
        }

        .imagem-computador {
            width: 200px;
        }
        .alinhamento-div {
            justify-content: center;
            align-items: center;
            margin: 0;
        }

    </style>
</head>
<body>
    <br />
    <form id="form1" runat="server">
        <header>
            <div>
                <asp:Label ID="lblBemvindo" runat="server" CssClass="bem-vindo"></asp:Label>
            </div>
        </header>
        <div class="alinhamento-div">
            <asp:Table ID="tbImagem" runat="server" Width="100%">
                <asp:TableHeaderRow Width="100%">
                    <asp:TableHeaderCell Width="33%">
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="34%">
                        <asp:Image ID="imgMenuAplicativos" runat="server" ImageUrl="~/ImagensSistema/imagemMenuAplicativos.jpg" CssClass="imagem-computador" />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="33%">
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
            <asp:Table ID="tbLinhaPrimeira" runat="server" Width="100%">
                <asp:TableHeaderRow Width="100%">
                    <asp:TableHeaderCell Width="33%">
                        <asp:Button ID="btnFinanceiro" runat="server" Text="FINANCEIRO" CssClass="botao-menu" />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="34%">
                        <asp:Button ID="btnProdutos" runat="server" Text="PRODUTOS" OnClick="btnProdutos_Click" CssClass="botao-menu" />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="33%">
                        <asp:Button ID="btnCalculadora" runat="server" Text="CALCULADORA DE PRECIFICAÇÃO" onClick="btnCalculadora_Click" CssClass="botao-menu" />
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
            <br />
            <asp:Table ID="tbLinhaSegunda" runat="server" Width="100%">
                <asp:TableHeaderRow Width="100%">
                    <asp:TableHeaderCell Width="20%">
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="60%">
                        <asp:Button ID="btnCaixa" runat="server" Text="CAIXA" onClick="btnCaixa_Click" CssClass="botao-menu-maior" />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="20%">
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
            <br />
            <asp:Table ID="tbLinhaTerceira" runat="server" Width="100%">
                <asp:TableHeaderRow Width="100%">
                    <asp:TableHeaderCell Width="33%">
                        <asp:Button ID="btnOrcamento" runat="server" Text="ORÇAMENTO" CssClass="botao-menu" />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="34%">
                        <asp:Button ID="btnAgendaEncomendas" runat="server" Text="AGENDA DE ENCOMENDAS" CssClass="botao-menu" />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="33%">
                        <asp:Button ID="btnEstoque" runat="server" Text="ESTOQUE" CssClass="botao-menu" />
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>

    </form>

</body>
</html>
