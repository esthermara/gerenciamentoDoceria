<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Caixa.aspx.cs" Inherits="GerenciamentoDoceria.Caixa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Caixa</title>
    <style>
        body {
            display:flex;
            justify-content: center;
            font-family: nunito, sans-serif;
            background-color: white;
            margin: 0;
            align-items: center;
            height: 100vh;
        }

        p {
            width: 1250px;
            height: 200px;
            border: 1px solid #d295ec;
            border-radius: 10px;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            cursor: pointer;
            background-color: white;
        }

        .conteudo-superior {
            flex-direction: column;
        }

        .lbl-caixa {
            color: #d295ec;
            margin-left: 600px;
        }
        .imagem-menu {
            width: 50px;
            margin-left: 520px;
            cursor: pointer;

        }

        .txt-id {
            width: 50px;
            height: 40px;
            border: 1px solid #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .txt-data {
            width: 100px;
            height: 40px;
            border: 1px solid #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .txt-cpf {
            width: 200px;
            height: 50px;
            border: 1px solid #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            margin-bottom: 10px;
            margin-right: 80px;
        }

        .txt-produto {
            width: 460px;
            height: 50px;
            border: 1px solid #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            margin-bottom: 10px;
            margin-right: 40px;
        }

        .conteudo-superior2 {
            display: inline;
        }

        .txt-quantidade {
            width: 130px;
            height: 50px;
            border: 1px solid #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .lbl-multi {
            color: #d295ec;
        }

        .txt-precounitario {
            width: 100px;
            height: 50px;
            border: 1px solid #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .lbl-igual {
            color: #d295ec;
        }

        .txt-valortotal {
            width: 100px;
            height: 50px;
            border: 1px solid #d295ec;
            background-color: #f9f9f9;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .conteudo-inferior {
            display: flex-inline;
            align-items: center;
        }

        .btn-finalizar {
            width: 120px;
            height: 60px;
            color: white;
            border: 1px solid #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 5px;
            cursor: pointer;
            background:  linear-gradient(to right, #B782CE, #d295ec);
            margin-left: 200px;
        }
        .btn-finalizar:hover {
            background: white;
            color: #d295ec;
        }

        .txt-valorfinal {
            background-color: #f9f9f9;
            border-radius: 10px;
            width: 100px;
            height: 50px;
            border: 1px solid #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
        }

        .conteudo-inferior2 {
            display: flex;
            justify-content: space-evenly;
            margin-bottom: 5px;
        }

        .btn-abrir {
            width: 100px;
            height: 30px;
            border: 1px solid #d295ec;
            background-color: #f9f9f9;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            cursor: pointer;
        }

        .btn-fechar {
            width: 100px;
            height: 30px;
            border: 1px solid #d295ec;
            background-color: #f9f9f9;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            cursor: pointer;
        }

        .btn-vendasrealizadas {
            width: 200px;
            height: 30px;
            border: 1px solid #d295ec;
            background-color: #f9f9f9;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            cursor: pointer;
        }
        .btnlimpar-item {
            width: 200px;
            height: 30px;
            border: 1px solid #d295ec;
            background-color: #f9f9f9;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 10px;
            cursor: pointer;
            margin-left: 1000px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Label ID="lblTituloCaixa" runat="server" Text="CAIXA" CssClass="lbl-caixa"></asp:Label>
            <asp:Image ID="imgMenu" runat="server" ImageUrl="~/ImagensSistema/imagemMenu.png" ToolTip="Menu" CssClass="imagem-menu" />
        </header>
        <div class="conteudo-superior">
            <asp:Label ID="lblId" runat="server" Text="ID:" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtId" runat="server" ReadOnly="true" CssClass="txt-id"></asp:TextBox>
            <asp:Label ID="lblData" runat="server" Text="DATA:" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtData" runat="server" ReadOnly="true" CssClass="txt-data"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtCpf" runat="server" placeholder="Digite o CPF do cliente" CssClass="txt-cpf"></asp:TextBox>
            <asp:TextBox ID="txtNomeProduto" runat="server" placeholder="Digite o nome do produto" CssClass="txt-produto"></asp:TextBox>
        </div>
        <div class="conteudo-superior2">
            <asp:Label ID="lblQuantidade" runat="server" Text="Quantidade:" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtQuantidade" runat="server" placeholder="Digite a quantidade" CssClass="txt-quantidade"></asp:TextBox>
            <asp:Label ID="lblMulti" runat="server" Text="x" Font-Bold="true" CssClass="lbl-igual"></asp:Label>
            <asp:Label ID="lblPrecoUnitario" runat="server" Text="Preço Unitário R$:" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtPrecoUnitario" runat="server" ReadOnly="true" CssClass="txt-precounitario"></asp:TextBox>
            <asp:Label ID="lblIgual" runat="server" Text="=" Font-Bold="true" CssClass="lbl-igual"></asp:Label>
            <asp:Label ID="lblVaor" runat="server" Text="Valor Total R$:" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtValor" runat="server" ReadOnly="true" CssClass="txt-valortotal"></asp:TextBox>
        </div>
        <p>Aqui ficará a tabela</p>
        <asp:Button ID="btnLimparItem" runat="server" Text="LIMPAR ITEM" CssClass="btnlimpar-item" />
        <div class="conteudo-inferior">
            <asp:RadioButtonList ID="rblFormaPagamento" runat="server" RepeatDirection="Horizontal" CssClass="formas-pagamento">
                <asp:ListItem Text="DINHEIRO" Value="0"></asp:ListItem>
                <asp:ListItem Text="DÉBITO" Value="1"></asp:ListItem>
                <asp:ListItem Text="CRÉDITO" Value="2"></asp:ListItem>
                <asp:ListItem Text="PIX" Value="3"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="lblValorFinal" runat="server" Text="VALOR FINAL R$:" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtValorFinal" runat="server" ReadOnly="true" CssClass="txt-valorfinal"></asp:TextBox>
            <asp:Button ID="btnFinalizar" runat="server" Text="FINALIZAR" CssClass="btn-finalizar" Font-Bold="true" />
        </div>
        <br />
        <div style="border-top: 1px solid #d295ec; width: 100%"></div>
        <br />
        <div class="conteudo-inferior2">
            <asp:Button ID="btnAbrir" runat="server" Text="ABRIR" CssClass="btn-abrir" />
            <asp:Button ID="btnFechar" runat="server" Text="FECHAR" CssClass="btn-fechar" />
            <asp:Button ID="btnVendasRealizadas" runat="server" Text="VENDAS REALIZADAS" CssClass="btn-vendasrealizadas" />
        </div>
    </form>
</body>
</html>
