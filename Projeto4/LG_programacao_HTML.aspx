<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LG_programacao_HTML.aspx.cs" Inherits="Projeto4.LG_programacao_HTML" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>HTML & CSS</h2>
    <br />
    <br />

    <!--image-->
    <div style="float: right; margin-left: 30px; margin-top: 55px">
        <img class="border" src="Images/HTML_CSS_skeleton.png" />
    </div>

    <div class="margin-top">
        <h3 style="text-align: left">HTML Conceito</h3>
        <div class="textos">O HTML é a linguagem base para se desenvolver qualquer site. É uma linguagem baseada em marcação, onde marcamos os elementos para definir quais informações a página vai exibir. </div>
        <br />
        <h3 style="text-align: left">CSS Conteito</h3>
        <div class="textos">O CSS é uma linguagem de folha de estilo composta por “camadas”, com o propósito de estilizar as páginas HTML, ou seja, definir a aparência das páginas, para deixá-las visualmente mais bonitas e agradáveis, podendo alterar a fonte, cor, posicionamento dos elementos, layout e muito mais.</div>
        <div class="textos">
            Aprender HTML e CSS é muito legal e importante, e esse aprendizado você pode obter no curso de análise e Desenvolvimento de Sistemas da Fatec de Americana.


A ferramenta que usamos no curso é o Visual Studio 2019, e para conhecer mais sobre essa ferramenta clique na imagem que se encontra logo abaixo:
        </div>


        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <!-- Imagens-->
        <div>
            <asp:HyperLink Target="_blank" ID="HyperLink1" NavigateUrl="https://visualstudio.microsoft.com/pt-br/" runat="server">

            <img class="images_html_css" src="Images/visual_stufio.png" />

            </asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
        </div>


    </div>
</asp:Content>
