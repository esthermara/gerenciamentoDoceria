<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vendas.aspx.cs" Inherits="GerenciamentoDoceria.Vendas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Vendas</title>
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

        .busca-cadastrar {
            display: flex-inline;
            margin-top: 450px;
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
                        <th colspan="5">VENDAS</th>
                    </tr>
                    <tr>
                        <th>ID</th>
                        <th>Data</th>
                        <th>Nome do Produto</th>
                        <th>Quantidade</th>
                        <th>Valor</th>

                    </tr>
                </thead>
                <tbody>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField HeaderText="ID" />
                            <asp:BoundField HeaderText="Data" />
                            <asp:BoundField HeaderText="Nome do Produto" />
                            <asp:BoundField HeaderText="Quantidade" />
                            <asp:BoundField HeaderText="Valor" />
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
                <asp:Image ID="imgMenu" runat="server" ImageUrl="~/ImagensSistema/imagemMenu.png" ToolTip="Menu" CssClass="imagem-menu" />
            </div>
        </div>
    </form>
</body>
</html>
