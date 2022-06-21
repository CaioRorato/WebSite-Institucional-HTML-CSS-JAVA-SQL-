<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Projeto4.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="margin-bottom">
        <div class="row">
            <div class="col-4">
                <div class="box">
                    <h2>ENTRAR</h2>
                    <br />
                    <asp:Label ID="Mensagem" runat="server" Forecolor="Red"></asp:Label>
                    <br />
                    <label>Nome de Acesso</label>
                    <asp:TextBox ID="NomeAcesso" runat="server"></asp:TextBox>
                    <label>Senha</label>
                    <asp:TextBox ID="Senha" TextMode="Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Entrar" Onclick="Entrar_Click" runat="server" Text="Entrar" />
                </div>
            </div>

        </div>
    </div>
</asp:Content>
