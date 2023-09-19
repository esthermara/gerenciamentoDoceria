<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GerenciamentoDoceria.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <style>
        body {
            font-family: nunito;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: white;
        }


        form {
            background-color: white;
            border-radius: 10px;
            max-width: 400px;
            width: 100%;
            height: 280px;
            padding: 40px;
            margin: auto;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.363);
            text-align: center;
            border: 1px solid #d295ec;
        }

        .box {
            display: flex;
            text-align: center;
            align-items: center;
            flex-direction: column;
            justify-content: center;
            align-self: center;
            align-content: center;
        }

        .txt-login {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-radius: 4px;
            font-family: nunito, sans-serif;
            box-shadow: inset -2px -2px 8px rgba(255, 255, 255, 1), inset -2px -2px 12px rgba(255, 255, 255, 0.5), inset 2px 2px 4px rgba(255, 255, 255, 0.1), inset 2px 2px 8px rgba(0, 0, 0, .3);
        }

        .lbl-login {
            font-family: Nunito, sans-serif;
            font-size: 20px;
            color: #d295ec
        }

        .btn-Entrar {
            background:  linear-gradient(to right, #B782CE, #d295ec);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 16px;
            border: 1px solid #d295ec;
            font-family: ninito, sans-serif;
        }
        .btn-Entrar:hover {
            background: white;
            color: #d295ec;
        }

        .ddl-entrarcomo {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-radius: 4px;
            font-family: nunito, sans-serif;
            box-shadow: inset -2px -2px 8px rgba(255, 255, 255, 1), inset -2px -2px 12px rgba(255, 255, 255, 0.5), inset 2px 2px 4px rgba(255, 255, 255, 0.1), inset 2px 2px 8px rgba(0, 0, 0, .3);
        }

        .imagem-login {
            width: 60px;
            height: 60px;
            margin-bottom: 5px;
            border-radius: 50%;
            box-shadow: -2px -2px 8px rgba(255, 255, 255, 1), -2px -2px 12px rgba(255, 255, 255, 0.5), inset 2px 2px 4px rgba(255, 255, 255. 0.1) 2px 2px 8px rgba(0, 0, 0, .3);
            background-position: center;
            background-size: 40px;
            background-repeat: no-repeat;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <section class="box" style="width: 100%;">
            <asp:Image ID="imgLogin" runat="server" ImageUrl="~/ImagensSistema/imagemLogin.png" ToolTip="Logo" CssClass="imagem-login" />
            <br />
            <asp:TextBox ID="txtUsuario" runat="server" placeholder="Digite o usuário:" CssClass="txt-login"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtSenha" runat="server" placeholder="Digite a senha:" TextMode="Password" CssClass="txt-login"></asp:TextBox>
            <br />
            <asp:DropDownList ID="ddlEntrarComo" runat="server" CssClass="ddl-entrarcomo">
                <asp:ListItem Text="Selecione uma profissão" Value="0"></asp:ListItem>
                <asp:ListItem Text="Administrador" Value="1"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnEntrar" runat="server" Text="ENTRAR" OnClick="btnEntrar_Click" Font-Bold="true" CssClass="btn-Entrar" />
        </section>
    </form>
</body>
</html>
