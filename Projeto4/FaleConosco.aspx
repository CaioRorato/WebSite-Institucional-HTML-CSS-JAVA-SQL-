<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="Projeto4.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="margin-top-60">
        <div class="row">
            <!--Formulario-->
            <div class="col-6">
                <div class="box">
                    <h1>Fale Conosco</h1>
                    <br />
                    <br />
                    <asp:Label ID="Msg" runat="server" ForeColor="Red">
                    </asp:Label>
                    <br />
                    <br />
                    <label>MENSAGEM</label>
                    <asp:TextBox ID="Mensagem" TextMode="MultiLine" Rows="6" MaxLength="256" runat="server"></asp:TextBox>
                    <label>NOME</label>
                    <asp:TextBox ID="Nome" MaxLength="100" runat="server"></asp:TextBox>
                    <label>EMAIL</label>
                    <asp:TextBox ID="Email" MaxLength="256" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />


                </div>
            </div>
            <!--MAPA-->
            <div class="col-6">
                <div class="box">
                </div>
            </div>

        </div>



    </div>




</asp:Content>
