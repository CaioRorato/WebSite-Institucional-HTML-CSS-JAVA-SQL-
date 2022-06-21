<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ExibirExcecoes.aspx.cs" Inherits="Projeto4.ExibirExcecoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="margin-top-60">
        <h1>Exceções da Aplicações</h1>
        <br />
        <br />
        <hr />
        <br />
        <asp:Panel ID="Panel1" Width="100%" Heigth="500px" HorizontalAlign="Left" ScrollBars="Vertical" runat="server">
            <asp:Label ID="Excecoes" runat="server"></asp:Label>
        </asp:Panel>
        <br />
        <asp:Button ID="Clear" OnClick="Clear_Click" runat="server" Text="Clear" />

    </div>
</asp:Content>
