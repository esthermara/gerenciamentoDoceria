<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgendaEncomendas.aspx.cs" Inherits="GerenciamentoDoceria.AgendaEncomendas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Agenda de Encomendas</title>

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
            width: 200%;
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

        /* Estilo para o botão dentro do popup */
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

        .btn-cadastrarencomenda {
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

            .btn-cadastrarencomenda:hover {
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

        .lbl-cadastroencomendas {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            font-family: nunito, sans-serif;
        }

        .buscar-cadastro {
            display: flex-inline;
            margin-top: 350px;
            align-items: center;
            margin-left: 10px;
        }

        .imagem-menu {
            width: 50px;
            margin-left: 1200px;
            cursor: pointer;
        }

        .btn-buscar {
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <thead>
                    <tr>
                        <th colspan="12">AGENDA DE ENCOMENDAS</th>
                    </tr>
                    <tr>
                        <th>ID</th>
                        <th style="width: 400px;">Nome do Cliente</th>
                        <th>Telefone/whatsapp</th>
                        <th>Data da Encomenda</th>
                        <th style="width: 600px;">Nome do Produto(s)</th>
                        <th>Quantidade</th>
                        <th>Prazo de Entrega</th>
                        <th>Valor da Encomenda</th>
                        <th>Valor do Sinal</th>
                        <th>Tipo de Pagamento</th>
                        <th style="width: 200px;">Situação</th>
                        <th>Data da Entrega</th>

                    </tr>
                </thead>
                <tbody>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField HeaderText="ID" />
                            <asp:BoundField HeaderText="Nome do Cliente" ItemStyle-Width="400px" />
                            <asp:BoundField HeaderText="Telefone/whatsapp" />
                            <asp:BoundField HeaderText="Data da Encomenda" />
                            <asp:BoundField HeaderText="Nome do Produto(s)" ItemStyle-Width="600px" />
                            <asp:BoundField HeaderText="Quantidade" />
                            <asp:BoundField HeaderText="Prazo de Entrega" />
                            <asp:BoundField HeaderText="Valor da Encomenda" />
                            <asp:BoundField HeaderText="Valor do Sinal" />
                            <asp:BoundField HeaderText="Tipo de Pagamento" />
                            <asp:BoundField HeaderText="Situação" ItemStyle-Width="200px" />
                            <asp:BoundField HeaderText="Data da Entrega" />
                        </Columns>
                    </asp:GridView>
                </tbody>
            </table>
        </div>
        <br />
        <div class="buscar-cadastro">
            <div>
                <asp:DropDownList ID="ddlFiltro" runat="server">
                    <asp:ListItem Text="Nome do Cliente" Value="Opcao1"></asp:ListItem>
                    <asp:ListItem Text="Nome do Produto(s)" Value="Opcao2"></asp:ListItem>
                    <asp:ListItem Text="Data da Encomenda" Value="Opcao3"></asp:ListItem>
                    <asp:ListItem Text="Situação" Value="Opcao4"></asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtFiltro" runat="server"></asp:TextBox>
                <asp:Button ID="btnFiltrarBuscar" runat="server" Text="Filtrar/Buscar" CssClass="btn-buscar" />
            </div>
            <div>
                <asp:Button ID="btnCadastrarEncomenda" runat="server" Text="CADASTRAR NOVA ENCOMENDA" OnClientClick="return false;" CssClass="btn-cadastrarencomenda" />
                <asp:Image ID="imgMenu" runat="server" ImageUrl="~/ImagensSistema/imagemMenu.png" ToolTip="Menu" CssClass="imagem-menu" />
            </div>
        </div>
        <div id="popup" style="display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: #fff; padding: 60px; border: 1px solid #d295ec; border-radius: 5px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);">
            <asp:Label ID="lblCadastroEncomendas" runat="server" Text="CADASTRO DE ENCOMENDAS" CssClass="lbl-cadastroencomendas"></asp:Label>
            <br />
            <asp:TextBox ID="txtId" runat="server" ReadOnly="true" CssClass="txt-cadastro"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtNomeCliente" runat="server" PlaceHolder="Digite o nome do cliente" CssClass="txt-cadastro"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtTelefoneWhasapp" runat="server" PlaceHolder="Digite o telefone/whatsapp" CssClass="txt-cadastro"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtDataEncomenda" runat="server" PlaceHolder="Digite a data da encomenda" CssClass="txt-cadastro"></asp:TextBox>
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
