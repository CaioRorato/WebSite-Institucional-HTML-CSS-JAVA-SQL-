<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SO.aspx.cs" Inherits="Projeto4.SO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Sistemas Operacionais</h2>
    <br />
    <br />

    <!--images-->
    <div style="float: right; margin-top: 20px; margin-left: 30px">
        <img class="border" style="height: 388px; width: 520px;" src="Images/SistemasOperacionais.png" />
    </div>

    <div class="margin-top">
        <h3 style="text-align: left">Conceito</h3>
        <div class="textos">
            Na matéria de Sistemas Operacionais, você irá:  
        </div>
        <br />
        <div class="textos">
            •Aprender a criar uma máquina (computador) virtual, gerenciar recursos, gerenciar processos e mais; 
            <br />
            •Compreender os conceitos e funcionalidades dos Sistemas Operacionais. 
            <br />
            •Utilizar minimamente o Sistema Operacional Linux; 
        </div>
        <br />
        <div class="textos">
            Além disso, essa matéria te levará a conhecer alguns dos componentes do computador!

            Utilizamos a ferramenta Oracle VM VirtualBox, para conhcer mais sobre clique na imagem abaixo:
        </div>
        <br />
        <br />
        <br />
        

        <!--Imagens-->
        <asp:HyperLink ID="HyperLink1" Target="_blank" NavigateUrl="https://www.oracle.com/br/virtualization/virtualbox/" runat="server">
        <img style="width:550px; height:325px; " src="Images/VirtualBox-Logo.png" />

        </asp:HyperLink>
    </div>
</asp:Content>
