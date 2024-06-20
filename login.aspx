<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login-styles.css">
    <title>Login/Register - Tienda SAS</title>
</head>
<body>
    <div class="container">
        <div class="login-box">
            <div class="login-form">
                <h2>Iniciar Sesión</h2>
                <form id="form1" runat="server">
                    <div class="textbox">
                        <asp:TextBox ID="txtEmailLogin" runat="server" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="textbox">
                        <asp:TextBox ID="txtPasswordLogin" runat="server"  TextMode="Password" placeholder="Password"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="Iniciar sesión" OnClick="btnLogin_Click" />
            </div>
            <div class="register-form">
                <h2>Registro</h2>
                    <div class="textbox">
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
                    </div>
                    <div class="textbox">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Correo"></asp:TextBox>
                    </div>
                    <div class="textbox">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                    </div>
                    <div class="checkbox">
                        <asp:CheckBox ID="chkTerms" runat="server" Text="Acepto los términos y condiciones" />
                    </div>
                    <asp:Button ID="btnRegister" runat="server" CssClass="btn" Text="Registrar" OnClick="btnRegister_Click" />
                </form>
            </div>
        </div>
    </div>
</body>
</html>
