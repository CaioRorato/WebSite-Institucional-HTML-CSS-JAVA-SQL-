<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Projeto4.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="margin-top-60">
        <div class="row">
            <!--Formulario de Dados-->
            <div class="col-6">
                <div class="box margin-right-10">
                    <h1>Cadastro de Usuário</h1>
                    <asp:Label ID="Mensagem" ForeColor="Red" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Codigo" runat="server" Font-Size="30"></asp:Label>
                    <label>NOME COMPLETO</label>
                    <asp:TextBox ID="NomeCompleto" MaxLength="255" runat="server"></asp:TextBox>
                    <label>NOME DE ACESSO</label>
                    <asp:TextBox ID="NomeAcesso" MaxLength="255" runat="server"></asp:TextBox>
                    <label>SENHA</label>
                    <asp:TextBox ID="Senha" MaxLength="255" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Salvar" OnClick="Salvar_Click" runat="server" Text="Salvar" />
                    <asp:Button ID="Excluir" OnClick="Excluir_Click" Visible="false" CssClass="button-delete" runat="server" Text="Excluir" />
                </div>

            </div>
            <!-- EXIBIR OS USUÁRIOS -->
            <div class="col-6">
                <div class="box">
                    <asp:GridView ID="ExibirUsuarios" OnSelectedIndexChanged="ExibirUsuarios_SelectedIndexChanged" Width="100%" CellPadding="8" BorderColor="#c0c0c0" runat="server" HeaderStyle-BackColor="#CCCCCC" HeaderStyle-ForeColor="Black" AutoGenerateSelectButton="true"></asp:GridView>
                </div>
            </div>

        </div>

    </div>
</asp:Content>
