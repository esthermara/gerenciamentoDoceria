<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculadoraPrecificacao.aspx.cs" Inherits="GerenciamentoDoceria.CalculadoraPrecificacao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Calculadora de Precificação</title>
    <style>
        body {
            justify-content: center;
            font-family: nunito, sans-serif;
            background-color: white;
            margin: 0;
            height: 100vh;
            display:flex;
            align-items: center;
        }

        .imagem-menu {
            width: 50px;
            margin-left: 1200px;
            cursor: pointer;
        }

        .conteudo-principal {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: auto;
        }

        .calculadora {
            background-color: white;
            border-radius: 10px;
            max-width: 350px;
            width: 100%;
            height: 460px;
            padding: 45px;
            margin-right: 300px;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border: 1px solid #d295ec;
            text-align: center;
            flex-direction: column;
            justify-content: center;
            align-content: center;
            display: flex;
        }

        .txtvalor-orcamento {
            align-self: center;
            width: 360px;
            height: 30px;
            border: none;
            border-radius: 5px;
            background-color: #f9f9f9;
            padding: 20px;
            text-align: center;
            box-shadow: inset -2px -2px 8px rgba(255, 255, 255, 1),
                inset -2px -2px 12px rgba(255, 255, 255, 0.5),
                inset 2px 2px 4px rgba(255, 255, 255, 0.1), inset 2px 2px 8px rgba(0, 0, 0, .3);
            outline: none;
            appearance: none;
            -webkit-appearance: none;
        }

        .btn-salvarnovo {
            white-space: pre-line;
            word-wrap: break-word;
            border-radius: 30px;
            height: 70px;
            width: 200px;
            text-align: center;
            justify-content: center;
            border: 1px solid #d295ec;
            color: #d295ec;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            cursor: pointer;
            margin-top: 30px;
        }
        .btn-salvarnovo:hover {
            background-color: white;
        }

        .imagem-calculadora {
            width: 150px;
            align-self: center;
        }

        .imagem-botao {
            display: flex;
            flex-direction: column;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Image ID="imgMenu" runat="server" ImageUrl="~/ImagensSistema/imagemMenu.png" ToolTip="Menu" CssClass="imagem-menu" />
        </header>
        <div class="conteudo-principal">
            <div class="calculadora">
                <asp:Label ID="lblOrcamento" runat="server" Text="VALOR SUGERIDO" Font-Bold="true"></asp:Label>
                <asp:TextBox ID="txtValorOrcamento" runat="server" ReadOnly="true" CssClass="txtvalor-orcamento"></asp:TextBox>
                <br />
                <asp:Label ID="lblNomeProduto" runat="server" Text="NOME DO PRODUTO:"></asp:Label>
                <asp:TextBox ID="txtNomeProduto" runat="server" PlaceHolder="Digite o nome do produto"></asp:TextBox>
                <br />
                <asp:Label ID="lblPretencaoSalarial" runat="server" Text="PRETENÇÃO SALARIAL:"></asp:Label>
                <asp:TextBox ID="txtPretencaoSalarial" runat="server" PlaceHolder="Você define o valor"></asp:TextBox>
                <br />
                <asp:Label ID="lblHoraTrabalho" runat="server" Text="HORAS DE TRABALHO:"></asp:Label>
                <asp:TextBox ID="txtHoraTrabalho" runat="server" PlaceHolder="Total de horas mensais"></asp:TextBox>
                <br />
                <asp:Label ID="lblValorHorasTrabalhada" runat="server" Text="VALOR DE HORA TRABALHADA:"></asp:Label>
                <asp:TextBox ID="txtValorHorasTrabalhada" runat="server" ReadOnly="true"></asp:TextBox>
                <br />
                <asp:Label ID="lblTempoExecucao" runat="server" Text="TEMPO DE EXECUÇÃO:"></asp:Label>
                <asp:TextBox ID="txtTempoExecucao" runat="server" PlaceHolder="Horas e minutos convertidos em decimais"></asp:TextBox>
                <br />
                <asp:Label ID="lblCustoMateriais" runat="server" Text="CUSTO DE MATERIAIS:"></asp:Label>
                <asp:TextBox ID="txtCustoMateriais" runat="server" PlaceHolder="Ex:embalagens,materia prima e etc"></asp:TextBox>
                <br />
                <asp:Label ID="lblMaoObra" runat="server" Text="MÃO DE OBRA:"></asp:Label>
                <asp:TextBox ID="txtMaoObra" runat="server" PlaceHolder="Você define o valor"></asp:TextBox>
                <br />
                <asp:Label ID="lblPercentualLucro" runat="server" Text="PERCENTUAL DE LUCRO COMUM (%):"></asp:Label>
                <asp:TextBox ID="txtPercentualLucro" runat="server" PlaceHolder="O percentual comum varia de 30% a 50%"></asp:TextBox>
            </div>
            <div class="imagem-botao">
                <asp:Image ID="imgCalculadora" runat="server" ImageUrl="~/ImagensSistema/calculadora.jpg" CssClass="imagem-calculadora" />
                <asp:Button ID="btnSalvarNovoProduto" runat="server" Text="SALVAR COMO NOVO PRODUTO" CssClass="btn-salvarnovo" />
                <asp:Button ID="btnSalvarNovoOrcamento" runat="server" Text="SALVAR COMO NOVO ORÇAMENTO" CssClass="btn-salvarnovo" />
            </div>
        </div>

    </form>
</body>
</html>
