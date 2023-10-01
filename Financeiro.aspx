<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Financeiro.aspx.cs" Inherits="GerenciamentoDoceria.Financeiro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Financeiro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            align-items: center;
            height: 100vh;
            justify-content: center;
        }
        /* Estilo para o título */
        h1 {
            font-size: 24px;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Estilo para a tabela */
        table {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #d295ec;
            font-family: Arial, sans-serif;
        }

            table th, table td {
                border: 1px solid #d295ec;
                padding: 10px;
                text-align: center;
            }

            table th {
                background-color: #f2f2f2;
                font-weight: bold;
                color: #333;
            }

            table tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            table tr:hover {
                background-color: #e5e5e5;
            }

        /* Estilo para o botão */
        .btn-ok {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            cursor: pointer;
            background: linear-gradient(to right, #B782CE, #d295ec);
            color: black;
            border: none;
            border-radius: 5px;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
        }

            .btn-ok:hover {
                background-color: #f9f9f9;
                border: 1px solid #d295ec;
            }

        .btn-cadastrarfinanca {
            display: flex;
            width: 250px;
            height: 60px;
            color: white;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            border-radius: 5px;
            cursor: pointer;
            background: linear-gradient(to right, #B782CE, #d295ec);
            padding: 10px 20px;
            border: none;
            font-weight: bold;
            margin-top: 30px;
        }

            .btn-cadastrarfinanca:hover {
                background-color: #f9f9f9;
                border: 1px solid #d295ec;
            }

        .txt-cadastro {
            border-radius: 10px;
            padding: 5px;
            border: 1px solid #d295ec;
            justify-content: center;
            align-items: center;
            display: flex;
            width: 300px;
        }

        .lbl-cadastrofinanca {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .busca-cadastrar {
            display: flex-inline;
            margin-top: 350px;
            align-items: center;
            margin-left: 10px;
        }

        .btn-filtrarbuscar {
            display: inline-block;
            padding: 8px 16px;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            cursor: pointer;
            background: linear-gradient(to right, #B782CE, #d295ec);
            color: white;
            border: none;
            border-radius: 20px;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
        }

        .imagem-menu {
            width: 50px;
            margin-left: 1200px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <thead>
                    <tr>
                        <th colspan="8">FINANCEIRO</th>
                    </tr>
                    <tr>
                        <th>ID</th>
                        <th>Categoria</th>
                        <th>Descrição</th>
                        <th>Vencimento</th>
                        <th>Pessoa</th>
                        <th>Valor</th>
                        <th>Valor devido</th>
                        <th>Baixado</th>

                    </tr>
                </thead>
                <tbody>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField HeaderText="ID" />
                            <asp:BoundField HeaderText="Categoria" />
                            <asp:BoundField HeaderText="Descrição" />
                            <asp:BoundField HeaderText="Vencimento" />
                            <asp:BoundField HeaderText="Pessoa" />
                            <asp:BoundField HeaderText="Valor" />
                            <asp:BoundField HeaderText="Valor devido" />
                            <asp:BoundField HeaderText="Baixado" />

                        </Columns>
                    </asp:GridView>
                </tbody>
            </table>
        </div>
        <br />
        <div class="busca-cadastrar">
            <div>
                <asp:DropDownList ID="ddlFiltro" runat="server">
                    <asp:ListItem Text="Nome do produto" Value="Opcao1"></asp:ListItem>
                    <asp:ListItem Text="Data" Value="Opcao2"></asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtFiltro" runat="server"></asp:TextBox>
                <asp:Button ID="btnFiltrarBuscar" runat="server" Text="Filtrar/Buscar" CssClass="btn-filtrarbuscar" />
            </div>
            <div>
                <asp:Button ID="btnCadastrarFinancas" runat="server" Text="CADASTRAR NOVA FINANÇA" OnClientClick="return false;" CssClass="btn-cadastrarfinanca" />
                <asp:Image ID="imgMenu" runat="server" ImageUrl="~/ImagensSistema/imagemMenu.png" ToolTip="Menu" CssClass="imagem-menu" />
            </div>
        </div>
        <div id="popup" style="display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: #fff; padding: 60px; border: 1px solid #d295ec; border-radius: 5px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);">
            <asp:Label ID="lblCadastroFinanca" runat="server" Text="CADASTRO DE FINANÇA" CssClass="lbl-cadastrofinanca"></asp:Label>
            <br />
            <asp:TextBox ID="txtData" runat="server" PlaceHolder="Digite a data" CssClass="txt-cadastro"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtNomeProduto" runat="server" PlaceHolder="Digite o nome do produto" CssClass="txt-cadastro"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtQuantidade" runat="server" PlaceHolder="Digite a quantidade" CssClass="txt-cadastro"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtValor" runat="server" PlaceHolder="Digite o valor do produto" CssClass="txt-cadastro"></asp:TextBox>
            <br />
            <asp:Button ID="btnFecharPopup" runat="server" Text="OK" OnClientClick="fecharPopup();" CssClass="btn-ok" />
        </div>
        <script>
            function abrirPopup() {
                document.getElementById('popup').style.display = 'block';
            }

            function fecharPopup() {
                document.getElementById('popup').style.display = 'none';
            }
        </script>
    </form>
</body>
</html>
